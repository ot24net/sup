#!/bin/bash

# 环境变量配置例子

# 配置项目环境变量
export PJ_NAME="goapp" # 配置项目名称
export PJ_ROOT=`pwd` # 配置项目工作路径
# -------------------------------------------------

# 以下是部署时的supervisor默认配置数据，若未配置时，会使用以下默认数据
# 开发IDE可不配置以下环境变量
# 配置supervisor的配置文件目录
export SUP_ETC_DIR="/etc/supervisor/conf.d/"
# 配置supervisor的子程序日志的单个文件最大大小
export SUP_LOG_SIZE="10MB"
# 配置supervisor的子程序日志的最多文件个数
export SUP_LOG_BAK="10"
# 配置supervisor配置中的environment环境变量
export SUP_APP_ENV="PJ_ROOT=\\\"$PJ_ROOT\\\",GIN_MODE=\\\"release\\\",LD_LIBRARY_PATH=\\\"$LD_LIBRARY_PATH\\\""
# 设定全编译或打包时的目录,用于sup [command] all 时的寻找路径
# 例如：sup build all, sup install all, sup restart all等
# 请配置实际项目中的路径
export SUP_BUILD_PATH="$PJ_ROOT/src/app $PJ_ROOT/src/web"
# -------------------------------------------------

