pushd /app
python3 ./launch_server.py --config /data/xkgao/llama.cpp/mindie/lse.json --devices 0,1,2,3,4,5,6,7
popd

# vim /data/xkgao/llama.cpp/mindie/lse.json
