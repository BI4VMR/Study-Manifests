# 简介
个人知识库与所有示例代码的Repo配置文件，可以批量下载与管理所有工程。

默认协议为HTTP，且目前只能使用HTTP协议进行操作。

# 使用方法
1. 安装Repo命令

```text
# 下载Repo脚本
mkdir /opt/repo; cd /opt/repo;
curl https://mirrors.tuna.tsinghua.edu.cn/git/git-repo -o repo

# 替换Repo源
export REPO_URL="https://mirrors.tuna.tsinghua.edu.cn/git/git-repo"
echo 'REPO_URL="https://mirrors.tuna.tsinghua.edu.cn/git/git-repo"' >> /etc/environment

# 授予执行权限
chmod +x repo

# 添加到可执行文件的目录中
sudo ln -sf /opt/repo/repo /usr/bin
```

2. 初始化项目组

```text
# 创建项目组根目录
mkdir Study; cd Study;
# 加载默认的Manifest文件
repo init -u git@github.com:BI4VMR/Study-Manifests
```

3. 同步所有项目

```text
repo sync
```

4. 初始化分支
Repo创建的项目可能会出现头指针分离现象，此处使用Repo统一执行命令，将HEAD指向"master"分支。

```text
repo forall -c "git checkout master"
```
