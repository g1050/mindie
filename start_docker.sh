docker run -it -d --net=host --shm-size=1g \
    --privileged \
    --name xkgao_mindie_official \
    --device=/dev/davinci_manager \
    --device=/dev/hisi_hdc \
    --device=/dev/devmm_svm \
    -v /usr/local/Ascend/driver:/usr/local/Ascend/driver:ro \
    -v /usr/local/sbin:/usr/local/sbin:ro \
    -v /path-to-weights:/path-to-weights:ro \
    -v /data:/data \
    swr.cn-south-1.myhuaweicloud.com/ascendhub/mindie:1.0.0-300I-Duo-py311-openeuler24.03-lts bash