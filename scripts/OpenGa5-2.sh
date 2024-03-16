#!/bin/bash

#     Operation System Course's Educoder excrises shell script. / 操作系统课程的头歌过关脚本。
#     Copyright (C) 2024  gaobobo

readonly DownloadSite=${1:-Gitee}

mkdir -p /tmp/OpenGa5-2

case $DownloadSite in
    Gitee)
        curl -o /tmp/OpenGa5-2/OpenGa5-2_1.sql https://gitee.com/coconut_floss/EduCoder_IntroToDb/raw/main/sql/OpenGa5-2/OpenGa5-2_1.sql
        ;;
    Github)
        curl -o /tmp/OpenGa5-2/OpenGa5-2_1.sql https://raw.githubusercontent.com/gaobobo/EduCoder_IntroToDb/main/sql/OpenGa5-2/OpenGa5-2_1.sql
        ;;
    *)
        echo "Unknown download site: $DownloadSite"
        echo "未知的下载站点：$DownloadSite"
        return 1
        ;;
esac

gsql -d postgres -U gaussdb -W'passwd123@123' -f /tmp/OpenGa5-2/OpenGa5-2_1.sql

if [ $? -eq 0 ]; then
    return 0
else
    return 1
fi