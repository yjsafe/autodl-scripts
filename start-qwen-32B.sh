# /bin/bash

pip install vllm
mkdir autodl-tmp/models
cp -r autodl-fs/models/Qwen2.5_32B-Instruct-GPTQ-Int4 autodl-tmp/models/
cd autodl-tmp/models/
nohup vllm serve Qwen2.5_32B-Instruct-GPTQ-Int4 --port 6006 --gpu-memory-utilization 0.98 --max-model-len 7000 > run.log 2>&1 &
