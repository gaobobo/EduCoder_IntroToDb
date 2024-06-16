# 头歌数据库导论快速通关脚本
 本项目提供shell脚本，运行后即可快速通关。

本项目不检查任何来自Gitee的Issue。如果你从Gitee访问本项目，可能不是最新的副本。前往本项目的[Github主页](https://github.com/gaobobo/EduCoder_IntroToDb)获取最新的更新。

## 如何使用

将下列代码中的`{LevelCode}`替换为相应的的关卡代号即可。关卡代号为 `数据库类别+章节号-关卡号` 。例如， 

```shell
ping -c 3 www.baidu.com
if [ $? -ne 0 ]; then
    clear
    echo "网络不通，无法安装。请稍后再试。"
    exit 1
fi
clear
# 使用Gitee站点镜像：
curl -o /tmp/start.sh https://gitee.com/coconut_floss/EduCoder_IntroToDb/raw/main/start.sh
chmod +x /tmp/start.sh
/tmp/start.sh {LevelCode}
```

> 备选方案：
> ```shell
> ping -c 3 www.baidu.com
> if [ $? -ne 0 ]; then
>     clear
>     echo "网络不通，无法安装。请稍后再试。"
>     exit 1
> fi
> clear
> # 使用Github作为下载源：
> curl -o /tmp/start.sh https://raw.githubusercontent.com/gaobobo/EduCoder_IntroToDb/main/start.sh
> chmod +x /tmp/start.sh
> /tmp/start.sh {LevelCode}
> ```

各个关卡的通关代码也可在微信公众号“椰松杂货铺”获取。

## 如何反馈

直接提交Issue即可。

## 开源许可

本项目遵循`GNU GENERAL PUBLIC LICENSE`开源许可。

## 贡献此项目

本项目根目录有两个文件夹，分别为：

- start.sh：用于自动下载相应的通关脚本。用法`./start.sh <关卡代码> [下载源：Gitee|Github]`。

- Scripts：用于存放脚本文件。

    - MySQL1-1.sh：通关脚本。

- sql：其他资源，包括sql等。
    - MySQL1-1/MySQL1-1_1：存放相应关卡通关脚本所需要的替换文件。此文件由通关脚本自动下载。
    
    - .....

如需贡献项目，按照上述规范提交即可。