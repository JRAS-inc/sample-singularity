#! /bin/bash
#PJM -L rscunit=cx
#PJM -L rscgrp=cx-debug
#PJM -L node=1
#PJM -L elapse=01:00
#PJM -L jobenv=singularity
#PJM -j
#PJM -S

module load singularity
singularity exec --nv ./env.sif python3 hello.py
