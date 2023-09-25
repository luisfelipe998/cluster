#!/bin/sh

mpiexec -n 4 --allow-run-as-root --host master-node,node1,node2,node3 python3 prime.py 10000
