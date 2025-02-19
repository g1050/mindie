model=/data/xkgao/llama.cpp/mindie/official/DeepSeek-R1-Distill-Qwen-32B_W8A8

torchrun --nproc_per_node 2 \
         --master_port 20037 \
         -m examples.run_pa \
         --model_path ${model} \
         --max_output_length 20
