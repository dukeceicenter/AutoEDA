#!/usr/bin/env python3

import argparse
import os
import time
from datetime import datetime

import pandas as pd


assert 'designs' in os.listdir()
BASE_DIR = os.getcwd()
os.environ['BASE_DIR'] = BASE_DIR
now = datetime.now().strftime('%m%d%H%M')

def parse_args():
    arg_parser = argparse.ArgumentParser()
    # design selection
    arg_parser.add_argument('--design', '-d', type=str, default=None,
                            help='Name of the design to be synthesized.')
    arg_parser.add_argument('--syn-version', '-s', type=str, default='tmp',
                            help='Name of the synthesis result to base on.')
    arg_parser.add_argument('--technode', '-t', type=str, default='FreePDK45',
                            help='Name of the tech node.')
    arg_parser.add_argument('--imp-version', type=str, default=None,
                            help='Name of the implementation result folder.')
    # restore design
    arg_parser.add_argument('--restore-design', '-r', type=int, default=None,
                            help='The .enc.dat profile to restore from.')
    args = arg_parser.parse_args()
    return args

def run_implementation(design, library, preceding_cmd, script_opts, syn_version, imp_version):
    # sanity check
    if not os.path.isdir(f'./designs/{design}/{library}/synthesis/{syn_version}'):
        return
    # TODO: support restore and continue
    script_cmd = f'./scripts/implementation.py -d {design} -t {library} --syn-version {syn_version} --imp-version {imp_version}'
    if script_opts['force-override']:
        script_cmd += ' -f'
    os.system(preceding_cmd + ';' + script_cmd)

def read_config(config_path):
    config_pd = pd.read_csv(config_path, index_col='version')
    return config_pd

def gen_export_cmd(config_pd, v_idx):
    env_seqs = []
    for col in config_pd.columns:
        env_seqs.append(f'export {col}={config_pd.iloc[v_idx][col]}')
    env_cmd = ';'.join(env_seqs)
    return env_cmd

def main(args):

    script_opts = {
        # 'force-override': args.force_override,
        'force-override': False,
    }

    # make imp version
    syn_ver = args.syn_version
    imp_ver = args.imp_version
    print('imp_ver:', imp_ver)

    if args.design is not None:
        run_implementation(args.design, args.technode, ';', script_opts, syn_ver, imp_ver)
        return

    # run all designs not in dbg_designs by default
    log_name = 'run_imp_{}.{}.running.log'.format(imp_ver, now)
    log_file = open(log_name, 'w')
    log_file.write('[imp_ver] ' + imp_ver + '\n')

    designs = sorted(os.listdir('./designs'))
    n_designs = len(designs)
    for idx, d in enumerate(designs):
        if not d.startswith('b'):
            continue
        if os.path.isdir('/'.join(['./designs', d])):
            log_file.write(
                '[{:02d}/{:02d}] {}: Start...'.format(idx+1, n_designs, d))
            log_file.flush()

            timer = time.time()
            run_implementation(d, args.technode, ';', script_opts, syn_ver, imp_ver)
            dur = time.time() - timer
            if dur < 1:
                log_file.write('Failed immediately, need double-check.\n')
            else:
                log_file.write('Finished in {:.2f} hrs.\n'.format(dur / 3600))
            log_file.flush()

    log_file.close()
    new_log_name = log_name.split('.')
    new_log_name.remove('running')
    new_log_name = '.'.join(new_log_name)
    os.system(f'mv {log_name} log/{new_log_name}')

if __name__ == '__main__':
    args = parse_args()
    main(args)
