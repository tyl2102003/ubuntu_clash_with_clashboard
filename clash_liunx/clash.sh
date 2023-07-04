#!/bin/bash
# 设置网路代理(确保网络代理是开启手动状态）
export ALL_PROXY=socks://127.0.0.1:7891/
export all_proxy=socks://127.0.0.1:7891/
export http_proxy=http://127.0.0.1:7890/
export https_proxy=http://127.0.0.1:7890/
export no_proxy=localhost,127.0.0.0/8,::1

echo "proxy set success"
# 启动clash
cd ./clash
echo "starting...."
./clash -d .
echo "启动成功"
