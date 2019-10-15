#!/bin/bash

(echo "language,instance,n,nsolutions,n_improvements,CPU_2opt"
 for lang in c++ java javascript julia numba pypy
 do
     cd $lang
     ./run_benchmark.sh ../instances
     cd ..
 done) > allruns.csv
