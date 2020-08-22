#!/bin/bash
# 中国LGSM快捷安装脚本
# 作者：地皮-DefiedParty
# 作者主页：https://dpii.club
# 项目地址：https://dpii.club/lgsm-cn-yes
# gitee主页：https://gitee.com/DefiedParty/LinuxGSM

echo "LinuxGSM-China-YES\n地皮-DefiedParty"
git clone https://gitee.com/DefiedParty/LinuxGSM
cd LinuxGSM
chmod +x linuxgsm.sh
chmod -R 764 lgsm/functions
echo "初始化完成，请继续按照教程执行！（补充，请先cd LinuxGSM 切换工作目录为：/home/用户名/LinuxGSM，也就是说下文所有有关目录的命令都要在/home/用户名/ 后面加上LinuxGSM)"
