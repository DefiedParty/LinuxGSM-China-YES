#!/bin/bash
# 中国LGSM快捷安装脚本
# 作者：地皮-DefiedParty
# 作者主页：https://dpii.club
# 项目地址：https://dpii.club/lgsm-cn-yes
# gitee主页：https://gitee.com/DefiedParty/LinuxGSM

isnowdir="u"
if [ "$1" == "--isnowdir" ]
then
    isnowdir="y"
fi
echo "LinuxGSM-China-YES    地皮-DefiedParty    !devmod!"
if [ "$isnowdir" == "u" ]
then
    read -p "是否要在当前目录下初始化？如果当前目录下有其他文件可能引发未知问题！(y/n)" isnowdir
fi
if [ "$isnowdir" == "n" ]
then
    git clone https://gitee.com/DefiedParty/LinuxGSM/
    git checkout devcn
    chmod +x linuxgsm.sh
    chmod -R 764 lgsm/functions
    echo "初始化完成"
elif [ "$isnowdir" == "y" ]
then
    git clone --no-checkout https://gitee.com/DefiedParty/LinuxGSM/.git dltmp
    mv dltmp/.git .
    rm -rf dltmp
    git reset --hard HEAD
    git checkout devcn
    chmod +x linuxgsm.sh
    chmod -R 764 lgsm/functions
    echo "初始化完成"
elif [ "$isnowdir" == "u" ]
then
    echo "未选择是否在当前目录下初始化"
fi