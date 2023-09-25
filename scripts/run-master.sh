#!/bin/sh

mpiexec -n 1 --allow-run-as-root --host master-node python3 prime.py 10000
