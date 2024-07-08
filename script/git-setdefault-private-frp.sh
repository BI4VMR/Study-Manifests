#!/bin/bash

function push(){
    if [ -d $1 ];then
        echo -e "\n开始处理项目【$1】..."
        cd $1
        git branch --set-upstream-to="private-frp/master" "master"
        cd ..
    else
        echo -e "\n项目【$1】不存在，已跳过！"
    fi
}

push KnowledgeBase
push Study-C
push Study-CPP
push Study-Java
push Study-Kotlin
push Study-Android
push Study-DesignPattern
push Study-Network
push Study-Manifests
