# /bin/bash

cd models
nohup vllm serve Qwen2.5-32B-Instruct-GPTQ-Int4 --port 6006 --gpu-memory-utilization 0.98 --max-model-len 7000 > run.log 2>&1 &
