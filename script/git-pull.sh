#!/bin/bash

function pull(){
    if [ -d $1 ];then
        echo -e "\n开始处理项目【$1】..."
        cd $1
        git pull
        cd ..
    else
        echo -e "\n项目【$1】不存在，已跳过！"
    fi
}

pull KnowledgeBase
pull Study-C
pull Study-Java
pull Study-Kotlin
pull Study-Android
pull Study-DesignPattern
pull Study-Network
pull Study-Manifests
