#!/bin/bash
# -------------------------------------------------------------------------------
# Script_name  : supervisor_install.sh
# Revision     : 1.0
# Date         : 2018/08/23
# Author       : AllenKe
# Email        : allenouyangke@icloud.com
# Description  : supervisor安装部署，需要提前安装好pip
# -------------------------------------------------------------------------------

function SupervisorInstall
{
    pip install supervisor
    F_STATUS_MINI "实用pip安装supervisor"
    echo_supervisord_conf > /etc/supervisord.conf
    F_STATUS_MINI "导出配置文件/etc/supervisord.conf"
}

function Config