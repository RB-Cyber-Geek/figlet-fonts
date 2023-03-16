#!/bin/bash
echo ""
printf "\033[1;33m \033[4;33m      Hello $(whoami)      \033[0m"
echo ""
echo ""
echo "What do you use from the Linux and Termux?"
echo "Linux users Press 'L,l' & termux users press 'T,t'"

linux () {
  sudo echo "lINUX"
  echo -e "\033[4;33m\033[1;33m  Downloading figlet font \033[0m"
    sudo apt install figlet &> /dev/null
    echo -e "\033[1;31m\033[5;31m╰┈┈➤\033[0m \033[2;35m\033[1;35mSuccessfully installed figlet \033[0m"
    echo " "
    echo -e "\033[4;33m\033[1;33m  Downloading python \033[0m"
    sudo apt install python -y &> /dev/null
    sudo apt install python3 -y &> /dev/null
    echo -e "\033[1;31m\033[5;31m╰┈┈➤\033[0m \033[2;35m\033[1;35mSuccessfully installed python \033[0m"
    echo " "
    echo -e "\033[4;33m\033[1;33m  Downloading pip latest version \033[0m"
    sudo pip install --upgrade pip &> /dev/null
    echo -e "\033[1;31m\033[5;31m╰┈┈➤\033[0m \033[2;35m\033[1;35mSuccessfully installed pip \033[0m"
    echo " "
    echo -e "\033[4;33m\033[1;33m  Downloading lolcat \033[0m"
    sudo pip install lolcat &> /dev/null
    echo -e "\033[1;31m\033[5;31m╰┈┈➤\033[0m \033[2;35m\033[1;35mSuccessfully installed lolcat \033[0m"
    echo " "
    echo -e "\033[4;33m\033[1;33m  Setup figlet fonts \033[0m"
    sudo cp .figletFont/* /usr/share/figlet
    echo -e "\033[1;31m\033[5;31m╰┈➤\033[0m \033[2;35m\033[1;35mSuccessfully setup fonts \033[0m"
    echo " "
    echo -e "\033[4;33m\033[1;33m  Create runer script \033[0m"
    linx0=/usr/bin/figfont
    cp .file/.linx.sh $linx0
    chmod +x $linx0
    echo -e "\033[1;31m\033[5;31m╰┈➤\033[0m \033[2;35m\033[1;35mSuccessfully create & setup complite\033[0m"
    echo " "
}

termux () {
  echo "TERMUX"
  echo -e "\033[4;33m\033[1;33m  Downloading figlet font \033[0m"
  pkg install figlet -y &> /dev/null
  echo -e "\033[1;31m\033[5;31m╰┈┈➤\033[0m \033[2;35m\033[1;35mSuccessfully installed figlet \033[0m"
  echo " "
  echo -e "\033[4;33m\033[1;33m  Downloading python \033[0m"
  apt install python -y &> /dev/null
  apt install python3 -y &> /dev/null
  echo -e "\033[1;31m\033[5;31m╰┈┈➤\033[0m \033[2;35m\033[1;35mSuccessfully installed python \033[0m"
  echo " "
  echo -e "\033[4;33m\033[1;33m  Downloading pip latest version \033[0m"
  pip install --upgrade pip &> /dev/null
  echo -e "\033[1;31m\033[5;31m╰┈┈➤\033[0m \033[2;35m\033[1;35mSuccessfully installed pip \033[0m"
  echo " "
  echo -e "\033[4;33m\033[1;33m  Downloading lolcat \033[0m"
  pip install lolcat &> /dev/null
  echo -e "\033[1;31m\033[5;31m╰┈┈➤\033[0m \033[2;35m\033[1;35mSuccessfully installed lolcat \033[0m"
  echo " "
  echo -e "\033[4;33m\033[1;33m  Setup figlet fonts \033[0m"
  cp -f .figletFont/* /data/data/com.termux/files/usr/share/figlet
  echo -e "\033[1;31m\033[5;31m╰┈➤\033[0m \033[2;35m\033[1;35mSuccessfully setup fonts \033[0m"
  echo " "
  echo -e "\033[4;33m\033[1;33m  Create runer script \033[0m"
  trmx0=/data/data/com.termux/files/usr/bin/figfont
  cp .file/.trmx.sh $trmx0
  chmod +x $trmx0
  echo -e "\033[1;31m\033[5;31m╰┈➤\033[0m \033[2;35m\033[1;35mSuccessfully create & setup complite \033[0m"
  echo " "
}

deld () {
  rm -rf ../figlet-fonts
  echo -e "\033[;32mNow write\033[0m \033[4;33m\033[1;33m'Figfont'\033[0m \033[;32mand see Font Style and Font Name.\033[0m"
}

echo -e -n "\033[1;36mInput Character\e[5;35m\e[1;35m:::\e[5;31m\e[1;31m❯"   # Display prompt in red
    echo -e -n '\e[0;0m'
read ch
if [ "$ch" = "L" ];then
linux
elif [ "$ch" = "l" ];then
linux
elif [ "$ch" = "T" ];then
termux
elif [ "$ch" = "t" ];then
termux
else
printf "\x1b[38;5;214m[${time1}]\e[0m \x1b[38;5;203m[ERROR]:\e[0m \x1b[38;5;87m Installation aborted.\n"
printf "\e[0m"
exit
fi
echo -e -n "\033[1;36mDo you want to deleted old & junk files? \e[5;35m\e[1;35m:::\e[5;31m\e[1;31m❯"   # Display prompt in red
    echo -e -n '\e[0;0m'
    read qp
    if [ "$qp" = "Y" ];then
    deld
    elif [ "$qp" = "y" ];then
    deld
    elif [ "$qp" = "" ];then
    deld
    else
    echo -e "\033[;32mNow write\033[0m \033[4;33m\033[1;33m'Figfont'\033[0m \033[;32mand see Font Style and Font Name.\033[0m"
    exit
    fi