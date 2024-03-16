#!/bin/bash

#     Operation System Course's Educoder excrises shell script. / 操作系统课程的头歌过关脚本。
#     Copyright (C) 2024  gaobobo

readonly DownloadSite=${1:-Gitee}

mkdir -p /tmp/OpenGa1-4

case $DownloadSite in
    Gitee)
        curl -o /tmp/OpenGa1-4/OpenGa1-4_1.sql https://gitee.com/coconut_floss/EduCoder_IntroToDb/raw/main/sql/OpenGa1-4/OpenGa1-4_1.sql
        curl -o /tmp/OpenGa1-4/OpenGa1-4_2.sql https://gitee.com/coconut_floss/EduCoder_IntroToDb/raw/main/sql/OpenGa1-4/OpenGa1-4_2.sql
        ;;
    Github)
        curl -o /tmp/OpenGa1-4/OpenGa1-4_1.sql https://raw.githubusercontent.com/gaobobo/EduCoder_IntroToDb/main/sql/OpenGa1-4/OpenGa1-4_1.sql
        curl -o /tmp/OpenGa1-4/OpenGa1-4_2.sql https://raw.githubusercontent.com/gaobobo/EduCoder_IntroToDb/main/sql/OpenGa1-4/OpenGa1-4_2.sql
        ;;
    *)
        echo "Unknown download site: $DownloadSite"
        echo "未知的下载站点：$DownloadSite"
        return 1
        ;;
esac

gsql -d postgres -U gaussdb -W'passwd123@123' -f /tmp/OpenGa1-4/OpenGa1-4_1.sql

gsql -d testdb -U gaussdb -W'passwd123@123' -f /tmp/OpenGa1-4/OpenGa1-4_2.sql

if [ $? -eq 0 ]; then
    return 0
else
    return 1
fi