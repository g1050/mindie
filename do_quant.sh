pushd /data/xkgao/msit/msmodelslim/example/Qwen

source /usr/local/Ascend/ascend-toolkit/set_env.sh
export ASCEND_RT_VISIBLE_DEVICES=6,7
export PYTORCH_NPU_ALLOC_CONF=expandable_segments:False

model_path=/data/bchen/model/DeepSeek-R1-Distill-Qwen-32B
model_path_quant=/data/xkgao/llama.cpp/mindie/official/DeepSeek-R1-Distill-Qwen-32B_W8A8
python3 quant_qwen.py --model_path ${model_path} \
    --save_directory ${model_path_quant} \
    --calib_file ../common/boolq.jsonl \
    --w_bit 8 --a_bit 8 --device_type npu  

popd