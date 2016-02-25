#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
function pfind(){ ps $(pgrep $@);}
function getdesktopwindow(){ xwininfo -name xfdesktop|grep -o "id: 0x.*.\""|sed -e "s/id: //" -e 's/".*."//g';}

export WIILOAD=tcp:$(arp -na|grep -e '00:23:31:a6:2f:6b'|grep -Eo "([0-9]{1,3}[\.]){3}[0-9]{1,3}")
export DEVKITPRO=/home/moffd/devkitPro
export DEVKITPPC=${DEVKITPRO}/devkitPPC
alias ls='ls --color=auto'
alias winbuild='x86_64-w64-mingw32-c++ -static'
alias hexdump='hexdump -C'

PS1="\[\033[01;37m\]\$? \$(if [[ \$? == 0 ]]; then echo \"\[\033[01;32m\]\342\234\223\"; else echo \"\[\033[01;31m\]\342\234\227\"; fi) \[\033[01;37m\][\u@\h \w] \$\[\033[00m\] "

minidlnad -f /home/$USER/.config/minidlna/minidlna.conf -P /home/$USER/.config/minidlna/minidlna.pid

. /home/moffd/torch/install/bin/torch-activate
