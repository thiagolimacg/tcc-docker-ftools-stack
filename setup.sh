#!/bin/sh
#
# Simply execute this script to setup the full toolchain:
#
# 
# Prerequisites:
# - Docker & Docker Toolbox v1.10
# - Git v2.6.4

echo "Create docker machine"
docker-machine create -d virtualbox --virtualbox-memory "6000" docker-ftools

echo "Setup environment"
eval $(docker-machine env docker-ftools)

echo "Checkout Git Repository"
git clone https://github.com/thiagolimacg/tcc-docker-ftools-stack.git
cd tcc-docker-ftools-stack

echo "Startup Docker Compose"
docker-compose up -d
