#!/bin/bash

# 配置远程服务器
function config(){
    if [ -d $1 ];then
        echo -e "\n开始处理项目【$1】..."
        cd $1
        git remote add private "git@172.18.5.1:bi4vmr/$1.git"
        git remote add private-vpn "http://192.168.128.1:30002/bi4vmr/$1.git"
        cd ..
    else
        echo -e "\n项目【$1】不存在，已跳过！"
    fi
}

config KnowledgeBase
config Study-Java
config Study-Kotlin
config Study-Android
config Study-DesignPattern
config Study-Network
