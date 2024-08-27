#!/bin/bash

echo '开始执行部署任务'

rm -rf ~/gh-projects/gateway

git clone "https://github.com/onedb-document/gateway.git" ~/gh-projects/gateway

echo '仓库准备完毕'

cd ~/gh-projects/gateway

docker-compose up -d

echo '运行成功'
