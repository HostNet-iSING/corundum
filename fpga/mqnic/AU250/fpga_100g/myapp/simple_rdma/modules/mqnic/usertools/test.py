#!/usr/bin/python3
import subprocess

try:
    for i in range(100):
        print(f"batch {i+1}")
        ret = subprocess.run("sudo ./sender ./packets.ini", timeout=15, check=True, shell=True)
        ret.check_returncode()
except Exception as e:
    print(e)
    exit(-1)