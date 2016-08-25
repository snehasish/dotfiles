#! /usr/bin/env python2
from subprocess import check_output

def get_lpass():
    return check_output("lpass show --password SFU", shell=True).strip("\n")


