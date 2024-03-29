#!/bin/bash

#     Operation System Course's Educoder excrises shell script. / 操作系统课程的头歌过关脚本。
#     Copyright (C) 2024  gaobobo

readonly DownloadSite=${1:-Gitee}

mkdir -p /tmp/MySQL1-4

case $DownloadSite in
    Gitee)
        curl -o /tmp/MySQL1-4/MySQL1-4.sql https://gitee.com/coconut_floss/EduCoder_IntroToDb/raw/main/sql/MySQL1-4/MySQL1-4.sql
        ;;
    Github)
        curl -o /tmp/MySQL1-4/MySQL1-4.sql https://raw.githubusercontent.com/gaobobo/EduCoder_IntroToDb/main/sql/MySQL1-4/MySQL1-4.sql
        ;;
    *)
        echo "Unknown download site: $DownloadSite"
        echo "未知的下载站点：$DownloadSite"
        return 1
        ;;
esac

mysql --force -uroot -p123123 -h127.0.0.1 < /tmp/MySQL1-4/MySQL1-4.sql

if [ $? -eq 0 ]; then
    return 0
else
    return 1
fi