import numpy as np
import pandas as pd
from transformers import AutoTokenizer

MODEL_PATH = "/data/xkgao/llama.cpp/mindie/official/DeepSeek-R1-Distill-Qwen-32B_W8A8"
OUT_FILE = "token_gsm8k.csv"
tokenizer = AutoTokenizer.from_pretrained(MODEL_PATH, trust_remote_code=True, use_fast=True, local_files_only=True)

def gen_requests_from_trace(trace_file):
    len = 0
    with open(OUT_FILE, "w") as f:
        df = pd.read_json(trace_file, lines=True)
        for i, row in df.iterrows():
            ques = row["question"]
            token = tokenizer([ques], return_tensors="np")
            token: np.ndarray = token["input_ids"].astype(np.int64)
            np.savetxt(f, token, fmt="%d", delimiter=",")
            len+=token.shape[-1]
    print(len / 1319)

if __name__ == '__main__':
    gen_requests_from_trace("./test.jsonl")
