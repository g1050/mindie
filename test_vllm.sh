curl 127.0.0.1:10828/generate -d '{
"prompt": "What is deep learning?",
"max_tokens": 32,
"stream": false,
"do_sample":true,
"repetition_penalty": 1.00,
"temperature": 0.01,
"top_p": 0.001,
"top_k": 1,
"model": "xkgaoModel"
}'
