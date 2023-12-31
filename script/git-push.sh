#!/bin/bash

function push(){
    if [ -d $1 ];then
        echo -e "\n开始处理项目【$1】..."
        cd $1
        if [[ -n $(git status -s) ]]
        then
            msg=$(uuidgen | awk "{print toupper(\$0)}"); git add .; git commit -m "$msg"; git push;
        else
            echo -e "\n项目【$1】无变化，已忽略。"
        fi
        cd ..
    else
        echo -e "\n项目【$1】不存在，已跳过！"
    fi
}

push KnowledgeBase
push Study-Java
push Study-Kotlin
push Study-Android
push Study-DesignPattern
push Study-Network