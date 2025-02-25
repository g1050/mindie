image="dockerhub.deepglint.com/lse/lse:1.0.8-mie-aarch64"
name=xkgao_mie

docker stop $name
docker rm $name

docker run -it --name $name \
--ipc=host \
--privileged \
--device=/dev/davinci0   \
--device=/dev/davinci1   \
--device=/dev/davinci2   \
--device=/dev/davinci3   \
--device=/dev/davinci4   \
--device=/dev/davinci5   \
--device=/dev/davinci6   \
--device=/dev/davinci7   \
--device=/dev/davinci_manager \
--device=/dev/devmm_svm \
--device=/dev/hisi_hdc \
-p 10827:10827 \
-v /usr/local/Ascend/driver:/usr/local/Ascend/driver \
-v /usr/local/Ascend/add-ons/:/usr/local/Ascend/add-ons/ \
-v /usr/local/sbin/:/usr/local/sbin/ \
-v /var/log/npu/slog/:/var/log/npu/slog \
-v /var/log/npu/profiling/:/var/log/npu/profiling \
-v /var/log/npu/dump/:/var/log/npu/dump \
-v /var/log/npu/:/usr/slog \
-v /etc/hccn.conf:/etc/hccn.conf \
-v /data/xkgao/llama.cpp/mindie/lse.json:/app/lse.json \
-v /data:/data \
-v /bchen:/bchen \
$image \
bash

# python3 ./launch_server.py --config /data/xkgao/llama.cpp/mindie/lse.json --devices 0,1,2,3
# export ASCEND_RT_VISIBLE_DEVICES=4,5,6,7