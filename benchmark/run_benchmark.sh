benchmark  \
	--DatasetPath /data/xkgao/mindie/benchmark/gsm8k/ \
	--DatasetType gsm8k --ModelName xkgaoModel \
	--ModelPath /data/xkgao/llama.cpp/mindie/official/DeepSeek-R1-Distill-Qwen-32B_W8A8 \
	--TestType client --Http http://127.0.0.1:10827 \
	--Concurrency 1  --TaskKind text --Tokenizer True \
	--MaxOutputLen 512
