#!/bin/bash

detect_distro() {
    if [[ "$OSTYPE" == linux-android* ]]; then
            distro="termux"
    fi

    if [ -z "$distro" ]; then
        distro=$(ls /etc | awk 'match($0, "(.+?)[-_](?:release|version)", groups) {if(groups[1] != "os") {print groups[1]}}')
    fi

    if [ -z "$distro" ]; then
        if [ -f "/etc/os-release" ]; then
            distro="$(source /etc/os-release && echo $ID)"
        elif [ "$OSTYPE" == "darwin" ]; then
            distro="darwin"
        else 
            distro="invalid"
        fi
    fi
}


    INSTALL="${backends[$distro]}"

    if [ "$distro" == "termux" ]; then
        PYTHON="figlet -f"
        SUDO=""
    else
        PYTHON="figlet -f"
        SUDO="sudo"
    fi
    PIP="$PYTHON -f"

#pause
detect_distro
if [ -f .update ];then
    echo "All Requirements Found...."
else
 
 printf '''
     _   _     _   _   _   _   _     _   _   _   _
    / \ / \   / \ / \ / \ / \ / \   / \ / \ / \ / \
   ( R | B ) ( C | y | b | e | r ) ( G | e | e | k )
    \_/ \_/   \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/

                                  Figlet Viewer 4.7

''' | lolcat

fi
while :
do
    echo " "
    echo -e "\t \033[3;32m\033[4;32m There are 381 figlet fonts. \033[0m"
    echo " "
    echo " To see the figlet font style and the font name, " | lolcat
    echo "   Enter any number between 1 to 381. " | lolcat
    echo " "
    echo -e "      \033[;32mEnter \033[3;32m\033[4;32muser name\033[0m \033[1;31m\033[5;31m>\033[0m \033[4;33m\033[1;33m' "$(whoami)" '\033[0m \033[;32mTo  Exit\033[5;32m\033[1;32m...\033[0m"   #exit command > $(whoami) Enter user name, to exit.
    echo " "
    echo -e -n "\033[1;36mInput number\e[5;35m\e[1;35m:::\e[5;31m\e[1;31m❯"   # Display prompt in red
    echo -e -n '\e[0;0m'                    # Turn off coloured output
    read ch
    
    if [ $ch = 1 ];then
        figlet  Cyber Geek | lolcat
        echo "figlet"
        #pause
    elif [ $ch = 2 ];then
        $PYTHON 1Row Cyber Geek | lolcat
        echo "1Row"
        #pause
    elif [ $ch = 3 ];then
        $PYTHON 3-D Cyber Geek | lolcat
        echo "3-D"
        #pause
    elif [ $ch = 4 ];then
        $PYTHON '3D Diagonal' Cyber Geek | lolcat
        echo "'3D Diagonal'"
        #pause
    elif [ $ch = 5 ];then
        $PYTHON 3D-ASCII Cyber Geek | lolcat
        echo "3D-ASCII"
        #pause
   elif [ $ch = 6 ];then
        $PYTHON 3d Cyber Geek | lolcat
        echo "3d"
        #pause
   elif [ $ch = 7 ];then
        $PYTHON 3d_diagonal Cyber Geek | lolcat
        echo "3d_diagonal"
        #pause
   elif [ $ch = 8 ];then
        $PYTHON 3x5 Cyber Geek | lolcat
        echo "3x5"
        #pause
   elif [ $ch = 9 ];then
        $PYTHON 4Max Cyber Geek | lolcat
        echo "4Max"
        #pause
   elif [ $ch = 10 ];then
        $PYTHON '5 Line Oblique' Cyber Geek | lolcat
        echo "'5 Line Oblique'"
        #pause
   elif [ $ch = 11 ];then
        $PYTHON 5lineoblique Cyber Geek | lolcat
        echo "5lineoblique"
        #pause
   elif [ $ch = 12 ];then
        $PYTHON 'AMC 3 Line' Cyber Geek | lolcat
        echo "'AMC 3 Line'"
        #pause
   elif [ $ch = 13 ];then
        $PYTHON 'AMC 3 Liv1' Cyber Geek | lolcat
        echo "'AMC 3 Liv1'"
        #pause
   elif [ $ch = 14 ];then
        $PYTHON 'AMC AAA01' Cyber Geek | lolcat
        echo "'AMC AAA01'"
        #pause
   elif [ $ch = 15 ];then
        $PYTHON 'AMC Neko' Cyber Geek | lolcat
        echo "'AMC Neko'"
        #pause
   elif [ $ch = 16 ];then
        $PYTHON 'AMC Razor' Cyber Geek | lolcat
        echo "'AMC Razor'"
        #pause
   elif [ $ch = 17 ];then
        $PYTHON 'AMC Razor2' Cyber Geek | lolcat
        echo "'AMC Razor2'"
        #pause
   elif [ $ch = 18 ];then
        $PYTHON 'AMC Slash' Cyber Geek | lolcat
        echo "'AMC Slash'"
        #pause
   elif [ $ch = 19 ];then
        $PYTHON 'AMC Slider' Cyber Geek | lolcat
        echo "'AMC Slider'"
        #pause
   elif [ $ch = 20 ];then
        $PYTHON 'AMC Thin' Cyber Geek | lolcat
        echo "'AMC Thin'"
        #pause
   elif [ $ch = 21 ];then
        $PYTHON 'AMC Tubes' Cyber Geek | lolcat
        echo "'AMC Tubes'"
        #pause
   elif [ $ch = 22 ];then
        $PYTHON 'AMC Untitled' Cyber Geek | lolcat
        echo "'AMC Untitled'"
        #pause
   elif [ $ch = 23 ];then
        $PYTHON 'ANSI Regular' Cyber Geek | lolcat
        echo "'ANSI Regular'"
        #pause
   elif [ $ch = 24 ];then
        $PYTHON 'ANSI Shadow' Cyber Geek | lolcat
        echo "'ANSI Shadow'"
        #pause
   elif [ $ch = 25 ];then
        $PYTHON 'ASCII New Roman' Cyber Geek | lolcat
        echo "'ASCII New Roman'"
        #pause
   elif [ $ch = 26 ];then
        $PYTHON Acrobatic Cyber Geek | lolcat
        echo "Acrobatic"
        #pause
   elif [ $ch = 27 ];then
        $PYTHON Alligator Cyber Geek | lolcat
        echo "Alligator"
        #pause
   elif [ $ch = 28 ];then
        $PYTHON Alligator2 Cyber Geek | lolcat
        echo "Alligator2"
        #pause
   elif [ $ch = 29 ];then
        $PYTHON Alpha Cyber Geek | lolcat
        echo "Alpha"
        #pause
   elif [ $ch = 30 ];then
        $PYTHON Alphabet Cyber Geek | lolcat
        echo "Alphabet"
        #pause
   elif [ $ch = 31 ];then
        $PYTHON Arrows Cyber Geek | lolcat
        echo "Arrows"
        #pause
   elif [ $ch = 32 ];then
        $PYTHON Avatar Cyber Geek | lolcat
        echo "Avatar"
        #pause
   elif [ $ch = 33 ];then
        $PYTHON B1FF Cyber Geek | lolcat
        echo "B1FF"
        #pause
   elif [ $ch = 34 ];then
        $PYTHON Banner Cyber Geek | lolcat
        echo "Banner"
        #pause
   elif [ $ch = 35 ];then
        $PYTHON Banner3-D Cyber Geek | lolcat
        echo "Banner3-D"
        #pause
   elif [ $ch = 36 ];then
        $PYTHON Banner3 Cyber Geek | lolcat
        echo "Banner3"
        #pause
   elif [ $ch = 37 ];then
        $PYTHON Banner4 Cyber Geek | lolcat
        echo "Banner4"
        #pause
   elif [ $ch = 38 ];then
        $PYTHON Barbwire Cyber Geek | lolcat
        echo "Barbwire"
        #pause
   elif [ $ch = 39 ];then
        $PYTHON Basic Cyber Geek | lolcat
        echo "Basic"
        #pause
   elif [ $ch = 40 ];then
        $PYTHON Bear Cyber Geek | lolcat
        echo "Bear"
        #pause
   elif [ $ch = 41 ];then
        $PYTHON Bell Cyber Geek | lolcat
        echo "Bell"
        #pause
   elif [ $ch = 42 ];then
        $PYTHON Benjamin Cyber Geek | lolcat
        echo "Benjamin"
        #pause
   elif [ $ch = 43 ];then
        $PYTHON 'Big Chief' Cyber Geek | lolcat
        echo "'Big Chief'"
        #pause
   elif [ $ch = 44 ];then
        $PYTHON 'Big Money-ne' Cyber Geek | lolcat
        echo "'Big Money-ne'"
        #pause
   elif [ $ch = 45 ];then
        $PYTHON 'Big Money-nw' Cyber Geek | lolcat
        echo "'Big Money-nw'"
        #pause
   elif [ $ch = 46 ];then
        $PYTHON 'Big Money-se' Cyber Geek | lolcat
        echo "'Big Money-se'"
        #pause
   elif [ $ch = 47 ];then
        $PYTHON 'Big Money-sw' Cyber Geek | lolcat
        echo "'Big Money-sw'"
        #pause
   elif [ $ch = 48 ];then
        $PYTHON Big Cyber Geek | lolcat
        echo "Big"
        #pause
   elif [ $ch = 49 ];then
        $PYTHON Bigfig Cyber Geek | lolcat
        echo "Bigfig"
        #pause
   elif [ $ch = 50 ];then
        $PYTHON Binary Cyber Geek | lolcat
        echo "Binary"
        #pause
   elif [ $ch = 51 ];then
        $PYTHON Block Cyber Geek | lolcat
        echo "Block"
        #pause
   elif [ $ch = 52 ];then
        $PYTHON Blocks Cyber Geek | lolcat
        echo "Blocks"
        #pause
   elif [ $ch = 53 ];then
        $PYTHON Bloody Cyber Geek | lolcat
        echo "Bloody"
        #pause
   elif [ $ch = 54 ];then
        $PYTHON Bolger Cyber Geek | lolcat
        echo "Bolger"
        #pause
   elif [ $ch = 55 ];then
        $PYTHON Braced Cyber Geek | lolcat
        echo "Braced"
        #pause
   elif [ $ch = 56 ];then
        $PYTHON Bright Cyber Geek | lolcat
        echo "Bright"
        #pause
   elif [ $ch = 57 ];then
        $PYTHON 'Broadway KB' Cyber Geek | lolcat
        echo "'Broadway KB'"
        #pause
   elif [ $ch = 58 ];then
        $PYTHON Broadway Cyber Geek | lolcat
        echo "Broadway"
        #pause
   elif [ $ch = 59 ];then
        $PYTHON Bubble Cyber Geek | lolcat
        echo "Bubble"
        #pause
   elif [ $ch = 60 ];then
        $PYTHON Bulbhead Cyber Geek | lolcat
        echo "Bulbhead"
        #pause
   elif [ $ch = 61 ];then
        $PYTHON Caligraphy Cyber Geek | lolcat
        echo "Caligraphy"
        #pause
   elif [ $ch = 62 ];then
        $PYTHON Caligraphy2 Cyber Geek | lolcat
        echo "Caligraphy2"
        #pause
   elif [ $ch = 63 ];then
        $PYTHON 'Calvin S' Cyber Geek | lolcat
        echo "'Calvin S'"
        #pause
   elif [ $ch = 64 ];then
        $PYTHON Cards Cyber Geek | lolcat
        echo "Cards"
        #pause
   elif [ $ch = 65 ];then
        $PYTHON Catwalk Cyber Geek | lolcat
        echo "Catwalk"
        #pause
   elif [ $ch = 66 ];then
        $PYTHON Chiseled Cyber Geek | lolcat
        echo "Chiseled"
        #pause
   elif [ $ch = 67 ];then
        $PYTHON Chunky Cyber Geek | lolcat
        echo "Chunky"
        #pause
   elif [ $ch = 68 ];then
        $PYTHON Coinstak Cyber Geek | lolcat
        echo "Coinstak"
        #pause
   elif [ $ch = 69 ];then
        $PYTHON Cola Cyber Geek | lolcat
        echo "Cola"
        #pause
   elif [ $ch = 70 ];then
        $PYTHON Colossal Cyber Geek | lolcat
        echo "Colossal"
        #pause
   elif [ $ch = 71 ];then
        $PYTHON Computer Cyber Geek | lolcat
        echo "Computer"
        #pause
   elif [ $ch = 72 ];then
        $PYTHON Contessa Cyber Geek | lolcat
        echo "Contessa"
        #pause
   elif [ $ch = 73 ];then
        $PYTHON Contrast Cyber Geek | lolcat
        echo "Contrast"
        #pause
   elif [ $ch = 74 ];then
        $PYTHON Cosmike Cyber Geek | lolcat
        echo "Cosmike"
        #pause
   elif [ $ch = 75 ];then
        $PYTHON Crawford Cyber Geek | lolcat
        echo "Crawford"
        #pause
   elif [ $ch = 76 ];then
        $PYTHON Crawford2 Cyber Geek | lolcat
        echo "Crawford2"
        #pause
   elif [ $ch = 77 ];then
        $PYTHON Crazy Cyber Geek | lolcat
        echo "Crazy"
        #pause
   elif [ $ch = 78 ];then
        $PYTHON Cricket Cyber Geek | lolcat
        echo "Cricket"
        #pause
   elif [ $ch = 79 ];then
        $PYTHON Cursive Cyber Geek | lolcat
        echo "Cursive"
        #pause
   elif [ $ch = 80 ];then
        $PYTHON Cyberlarge Cyber Geek | lolcat
        echo "Cyberlarge"
        #pause
   elif [ $ch = 81 ];then
        $PYTHON Cybermedium Cyber Geek | lolcat
        echo "Cybermedium"
        #pause
   elif [ $ch = 82 ];then
        $PYTHON Cybersmall Cyber Geek | lolcat
        echo "Cybersmall"
        #pause
   elif [ $ch = 83 ];then
        $PYTHON Cygnet Cyber Geek | lolcat
        echo "Cygnet"
        #pause
   elif [ $ch = 84 ];then
        $PYTHON DANC4 Cyber Geek | lolcat
        echo "DANC4"
        #pause
   elif [ $ch = 85 ];then
        $PYTHON 'DOS Rebel' Cyber Geek | lolcat
        echo "'DOS Rebel'"
        #pause
   elif [ $ch = 86 ];then
        $PYTHON DWhistled Cyber Geek | lolcat
        echo "DWhistled"
        #pause
   elif [ $ch = 87 ];then
        $PYTHON 'Dancing Font' Cyber Geek | lolcat
        echo "'Dancing Font'"
        #pause
   elif [ $ch = 88 ];then
        $PYTHON Decimal Cyber Geek | lolcat
        echo "Decimal"
        #pause
   elif [ $ch = 89 ];then
        $PYTHON 'Def Leppard' Cyber Geek | lolcat
        echo "'Def Leppard'"
        #pause
   elif [ $ch = 90 ];then
        $PYTHON 'Delta Corps Priest 1' Cyber Geek | lolcat
        echo "'Delta Corps Priest 1'"
        #pause
   elif [ $ch = 91 ];then
        $PYTHON Diamond Cyber Geek | lolcat
        echo "Diamond"
        #pause
   elif [ $ch = 92 ];then
        $PYTHON 'Diet Cola' Cyber Geek | lolcat
        echo "'Diet Cola'"
        #pause
   elif [ $ch = 93 ];then
        $PYTHON Digital Cyber Geek | lolcat
        echo "Digital"
        #pause
   elif [ $ch = 94 ];then
        $PYTHON Doh Cyber Geek | lolcat
        echo "Doh"
        #pause
   elif [ $ch = 95 ];then
        $PYTHON Doom Cyber Geek | lolcat
        echo "Doom"
        #pause
   elif [ $ch = 96 ];then
        $PYTHON 'Dot Matrix' Cyber Geek | lolcat
        echo "'Dot Matrix'"
        #pause
   elif [ $ch = 97 ];then
        $PYTHON 'Double Shorts' Cyber Geek | lolcat
        echo "'Double Shorts'"
        #pause
   elif [ $ch = 98 ];then
        $PYTHON Double Cyber Geek | lolcat
        echo "Double"
        #pause
   elif [ $ch = 99 ];then
        $PYTHON 'Dr Pepper' Cyber Geek | lolcat
        echo "'Dr Pepper'"
        #pause
   elif [ $ch = 100 ];then
        $PYTHON 'Efti Chess' Cyber Geek | lolcat
        echo "'Efti Chess'"
        #pause
   elif [ $ch = 101 ];then
        $PYTHON 'Efti Font' Cyber Geek | lolcat
        echo "'Efti Font'"
        #pause
   elif [ $ch = 102 ];then
        $PYTHON 'Efti Italic' Cyber Geek | lolcat
        echo "'Efti Italic'"
        #pause
   elif [ $ch = 103 ];then
        $PYTHON 'Efti Piti' Cyber Geek | lolcat
        echo "'Efti Piti'"
        #pause
   elif [ $ch = 104 ];then
        $PYTHON 'Efti Robot' Cyber Geek | lolcat
        echo "'Efti Robot'"
        #pause
   elif [ $ch = 105 ];then
        $PYTHON 'Efti Wall' Cyber Geek | lolcat
        echo "'Efti Wall'"
        #pause
   elif [ $ch = 106 ];then
        $PYTHON 'Efti Water' Cyber Geek | lolcat
        echo "'Efti Water'"
        #pause
   elif [ $ch = 107 ];then
        $PYTHON Electronic Cyber Geek | lolcat
        echo "Electronic"
        #pause
   elif [ $ch = 108 ];then
        $PYTHON Elite Cyber Geek | lolcat
        echo "Elite"
        #pause
   elif [ $ch = 109 ];then
        $PYTHON Epic Cyber Geek | lolcat
        echo "Epic"
        #pause
   elif [ $ch = 110 ];then
        $PYTHON Fender Cyber Geek | lolcat
        echo "Fender"
        #pause
   elif [ $ch = 111 ];then
        $PYTHON Filter Cyber Geek | lolcat
        echo "Filter"
        #pause
   elif [ $ch = 112 ];then
        $PYTHON 'Fire Font-k' Cyber Geek | lolcat
        echo "'Fire Font-k'"
        #pause
   elif [ $ch = 113 ];then
        $PYTHON 'Fire Font-s' Cyber Geek | lolcat
        echo "'Fire Font-s'"
        #pause
   elif [ $ch = 114 ];then
        $PYTHON Flipped Cyber Geek | lolcat
        echo "Flipped"
        #pause
   elif [ $ch = 115 ];then
        $PYTHON 'Flower Power' Cyber Geek | lolcat
        echo "'Flower Power'"
        #pause
   elif [ $ch = 116 ];then
        $PYTHON 'Four Tops' Cyber Geek | lolcat
        echo "'Four Tops'"
        #pause
   elif [ $ch = 117 ];then
        $PYTHON Fraktur Cyber Geek | lolcat
        echo "Fraktur"
        #pause
   elif [ $ch = 118 ];then
        $PYTHON 'Fun Face' Cyber Geek | lolcat
        echo "'Fun Face'"
        #pause
   elif [ $ch = 119 ];then
        $PYTHON 'Fun Faces' Cyber Geek | lolcat
        echo "'Fun Faces'"
        #pause
   elif [ $ch = 120 ];then
        $PYTHON Fuzzy Cyber Geek | lolcat
        echo "Fuzzy"
        #pause
   elif [ $ch = 121 ];then
        $PYTHON Georgi16 Cyber Geek | lolcat
        echo "Georgi16"
        #pause
   elif [ $ch = 122 ];then
        $PYTHON Georgia11 Cyber Geek | lolcat
        echo "Georgia11"
        #pause
   elif [ $ch = 123 ];then
        $PYTHON Ghost Cyber Geek | lolcat
        echo "Ghost"
        #pause
   elif [ $ch = 124 ];then
        $PYTHON Ghoulish Cyber Geek | lolcat
        echo "Ghoulish"
        #pause
   elif [ $ch = 125 ];then
        $PYTHON Glenyn Cyber Geek | lolcat
        echo "Glenyn"
        #pause
   elif [ $ch = 126 ];then
        $PYTHON Goofy Cyber Geek | lolcat
        echo "Goofy"
        #pause
   elif [ $ch = 127 ];then
        $PYTHON Gothic Cyber Geek | lolcat
        echo "Gothic"
        #pause
   elif [ $ch = 128 ];then
        $PYTHON Graceful Cyber Geek | lolcat
        echo "Graceful"
        #pause
   elif [ $ch = 129 ];then
        $PYTHON Gradient Cyber Geek | lolcat
        echo "Gradient"
        #pause
   elif [ $ch = 130 ];then
        $PYTHON Graffiti Cyber Geek | lolcat
        echo "Graffiti"
        #pause
   elif [ $ch = 131 ];then
        $PYTHON Greek Cyber Geek | lolcat
        echo "Greek"
        #pause
   elif [ $ch = 132 ];then
        $PYTHON 'Heart Left' Cyber Geek | lolcat
        echo "'Heart Left'"
        #pause
   elif [ $ch = 133 ];then
        $PYTHON 'Heart Right' Cyber Geek | lolcat
        echo "'Heart Right'"
        #pause
   elif [ $ch = 134 ];then
        $PYTHON 'Henry 3D' Cyber Geek | lolcat
        echo "'Henry 3D'"
        #pause
   elif [ $ch = 135 ];then
        $PYTHON Hex Cyber Geek | lolcat
        echo "Hex"
        #pause
   elif [ $ch = 136 ];then
        $PYTHON Hieroglyphs Cyber Geek | lolcat
        echo "Hieroglyphs"
        #pause
   elif [ $ch = 137 ];then
        $PYTHON Hollywood Cyber Geek | lolcat
        echo "Hollywood"
        #pause
   elif [ $ch = 138 ];then
        $PYTHON 'Horizontal Left' Cyber Geek | lolcat
        echo "'Horizontal Left'"
        #pause
   elif [ $ch = 139 ];then
        $PYTHON 'Horizontal Right' Cyber Geek | lolcat
        echo "'Horizontal Right'"
        #pause
   elif [ $ch = 140 ];then
        $PYTHON ICL-1900 Cyber Geek | lolcat
        echo "ICL-1900"
        #pause
   elif [ $ch = 141 ];then
        $PYTHON Impossible Cyber Geek | lolcat
        echo "Impossible"
        #pause
   elif [ $ch = 142 ];then
        $PYTHON Invita Cyber Geek | lolcat
        echo "Invita"
        #pause
   elif [ $ch = 143 ];then
        $PYTHON Isometric1 Cyber Geek | lolcat
        echo "Isometric1"
        #pause
   elif [ $ch = 144 ];then
        $PYTHON Isometric2 Cyber Geek | lolcat
        echo "Isometric2"
        #pause
   elif [ $ch = 145 ];then
        $PYTHON Isometric3 Cyber Geek | lolcat
        echo "Isometric3"
        #pause
   elif [ $ch = 146 ];then
        $PYTHON Isometric4 Cyber Geek | lolcat
        echo "Isometric4"
        #pause
   elif [ $ch = 147 ];then
        $PYTHON Italic Cyber Geek | lolcat
        echo "Italic"
        #pause
   elif [ $ch = 148 ];then
        $PYTHON Ivrit Cyber Geek | lolcat
        echo "Ivrit"
        #pause
   elif [ $ch = 149 ];then
        $PYTHON 'JS Block Letters' Cyber Geek | lolcat
        echo "'JS Block Letters'"
        #pause
   elif [ $ch = 150 ];then
        $PYTHON 'JS Bracket Letters' Cyber Geek | lolcat
        echo "'JS Bracket Letters'"
        #pause
   elif [ $ch = 151 ];then
        $PYTHON 'JS Capital Curves' Cyber Geek | lolcat
        echo "'JS Capital Curves'"
        #pause
   elif [ $ch = 152 ];then
        $PYTHON 'JS Cursive' Cyber Geek | lolcat
        echo "'JS Cursive'"
        #pause
   elif [ $ch = 153 ];then
        $PYTHON 'JS Stick Letters' Cyber Geek | lolcat
        echo "'JS Stick Letters'"
        #pause
   elif [ $ch = 154 ];then
        $PYTHON Jacky Cyber Geek | lolcat
        echo "Jacky"
        #pause
   elif [ $ch = 155 ];then
        $PYTHON Jazmine Cyber Geek | lolcat
        echo "Jazmine"
        #pause
   elif [ $ch = 156 ];then
        $PYTHON Jerusalem Cyber Geek | lolcat
        echo "Jerusalem"
        #pause
   elif [ $ch = 157 ];then
        $PYTHON Katakana Cyber Geek | lolcat
        echo "Katakana"
        #pause
   elif [ $ch = 158 ];then
        $PYTHON Kban Cyber Geek | lolcat
        echo "Kban"
        #pause
   elif [ $ch = 159 ];then
        $PYTHON Keyboard Cyber Geek | lolcat
        echo "Keyboard"
        #pause
   elif [ $ch = 160 ];then
        $PYTHON Knob Cyber Geek | lolcat
        echo "Knob"
        #pause
   elif [ $ch = 161 ];then
        $PYTHON 'Konto Slant' Cyber Geek | lolcat
        echo "'Konto Slant'"
        #pause
   elif [ $ch = 162 ];then
        $PYTHON Konto Cyber Geek | lolcat
        echo "Konto"
        #pause
   elif [ $ch = 163 ];then
        $PYTHON LCD Cyber Geek | lolcat
        echo "LCD"
        #pause
   elif [ $ch = 164 ];then
        $PYTHON 'Larry 3D 2' Cyber Geek | lolcat
        echo "'Larry 3D 2'"
        #pause
   elif [ $ch = 165 ];then
        $PYTHON 'Larry 3D' Cyber Geek | lolcat
        echo "'Larry 3D'"
        #pause
   elif [ $ch = 166 ];then
        $PYTHON Lean Cyber Geek | lolcat
        echo "Lean"
        #pause
   elif [ $ch = 167 ];then
        $PYTHON Letters Cyber Geek | lolcat
        echo "Letters"
        #pause
   elif [ $ch = 168 ];then
        $PYTHON 'Lil Devil' Cyber Geek | lolcat
        echo "'Lil Devil'"
        #pause
   elif [ $ch = 169 ];then
        $PYTHON 'Line Blocks' Cyber Geek | lolcat
        echo "'Line Blocks'"
        #pause
   elif [ $ch = 170 ];then
        $PYTHON Linux Cyber Geek | lolcat
        echo "Linux"
        #pause
   elif [ $ch = 171 ];then
        $PYTHON Lockergnome Cyber Geek | lolcat
        echo "Lockergnome"
        #pause
   elif [ $ch = 172 ];then
        $PYTHON Madrid Cyber Geek | lolcat
        echo "Madrid"
        #pause
   elif [ $ch = 173 ];then
        $PYTHON Marquee Cyber Geek | lolcat
        echo "Marquee"
        #pause
   elif [ $ch = 174 ];then
        $PYTHON Maxfour Cyber Geek | lolcat
        echo "Maxfour"
        #pause
   elif [ $ch = 175 ];then
        $PYTHON Merlin1 Cyber Geek | lolcat
        echo "Merlin1"
        #pause
   elif [ $ch = 176 ];then
        $PYTHON Merlin2 Cyber Geek | lolcat
        echo "Merlin2"
        #pause
   elif [ $ch = 177 ];then
        $PYTHON Mike Cyber Geek | lolcat
        echo "Mike"
        #pause
   elif [ $ch = 178 ];then
        $PYTHON Mini Cyber Geek | lolcat
        echo "Mini"
        #pause
   elif [ $ch = 179 ];then
        $PYTHON Mirror Cyber Geek | lolcat
        echo "Mirror"
        #pause
   elif [ $ch = 180 ];then
        $PYTHON Mnemonic Cyber Geek | lolcat
        echo "Mnemonic"
        #pause
   elif [ $ch = 181 ];then
        $PYTHON Modular Cyber Geek | lolcat
        echo "Modular"
        #pause
   elif [ $ch = 182 ];then
        $PYTHON Morse Cyber Geek | lolcat
        echo "Morse"
        #pause
   elif [ $ch = 183 ];then
        $PYTHON Morse2 Cyber Geek | lolcat
        echo "Morse2"
        #pause
   elif [ $ch = 184 ];then
        $PYTHON Moscow Cyber Geek | lolcat
        echo "Moscow"
        #pause
   elif [ $ch = 185 ];then
        $PYTHON Mshebrew210 Cyber Geek | lolcat
        echo "Mshebrew210"
        #pause
   elif [ $ch = 186 ];then
        $PYTHON Muzzle Cyber Geek | lolcat
        echo "Muzzle"
        #pause
   elif [ $ch = 187 ];then
        $PYTHON NScript Cyber Geek | lolcat
        echo "NScript"
        #pause
   elif [ $ch = 188 ];then
        $PYTHON 'NT Greek' Cyber Geek | lolcat
        echo "'NT Greek'"
        #pause
   elif [ $ch = 189 ];then
        $PYTHON 'NV Script' Cyber Geek | lolcat
        echo "'NV Script'"
        #pause
   elif [ $ch = 190 ];then
        $PYTHON Nancyj-Fancy Cyber Geek | lolcat
        echo "Nancyj-Fancy"
        #pause
   elif [ $ch = 191 ];then
        $PYTHON Nancyj-Improved Cyber Geek | lolcat
        echo "Nancyj-Improved"
        #pause
   elif [ $ch = 192 ];then
        $PYTHON Nancyj-Underlined Cyber Geek | lolcat
        echo "Nancyj-Underlined"
        #pause
   elif [ $ch = 193 ];then
        $PYTHON Nancyj Cyber Geek | lolcat
        echo "Nancyj"
        #pause
   elif [ $ch = 194 ];then
        $PYTHON Nipples Cyber Geek | lolcat
        echo "Nipples"
        #pause
   elif [ $ch = 195 ];then
        $PYTHON O8 Cyber Geek | lolcat
        echo "O8"
        #pause
   elif [ $ch = 196 ];then
        $PYTHON OS2 Cyber Geek | lolcat
        echo "OS2"
        #pause
   elif [ $ch = 197 ];then
        $PYTHON Octal Cyber Geek | lolcat
        echo "Octal"
        #pause
   elif [ $ch = 198 ];then
        $PYTHON Ogre Cyber Geek | lolcat
        echo "Ogre"
        #pause
   elif [ $ch = 199 ];then
        $PYTHON 'Old Banner' Cyber Geek | lolcat
        echo "'Old Banner'"
        #pause
   elif [ $ch = 200 ];then
        $PYTHON "Patorjk's Cheese" Cyber Geek | lolcat
        echo "'Patorjk's Cheese'"
        #pause
   elif [ $ch = 201 ];then
        $PYTHON Patorjk-HeX Cyber Geek | lolcat
        echo "Patorjk-HeX"
        #pause
   elif [ $ch = 202 ];then
        $PYTHON Pawp Cyber Geek | lolcat
        echo "Pawp"
        #pause
   elif [ $ch = 203 ];then
        $PYTHON 'Peaks Slant' Cyber Geek | lolcat
        echo "'Peaks Slant'"
        #pause
   elif [ $ch = 204 ];then
        $PYTHON Peaks Cyber Geek | lolcat
        echo "Peaks"
        #pause
   elif [ $ch = 205 ];then
        $PYTHON Pebbles Cyber Geek | lolcat
        echo "Pebbles"
        #pause
   elif [ $ch = 206 ];then
        $PYTHON Pepper Cyber Geek | lolcat
        echo "Pepper"
        #pause
   elif [ $ch = 207 ];then
        $PYTHON Poison Cyber Geek | lolcat
        echo "Poison"
        #pause
   elif [ $ch = 208 ];then
        $PYTHON Puffy Cyber Geek | lolcat
        echo "Puffy"
        #pause
   elif [ $ch = 209 ];then
        $PYTHON Puzzle Cyber Geek | lolcat
        echo "Puzzle"
        #pause
   elif [ $ch = 210 ];then
        $PYTHON Pyramid Cyber Geek | lolcat
        echo "Pyramid"
        #pause
   elif [ $ch = 211 ];then
        $PYTHON Rammstein Cyber Geek | lolcat
        echo "Rammstein"
        #pause
   elif [ $ch = 212 ];then
        $PYTHON Rectangles Cyber Geek | lolcat
        echo "Rectangles"
        #pause
   elif [ $ch = 213 ];then
        $PYTHON 'Red Phoenix' Cyber Geek | lolcat
        echo "'Red Phoenix'"
        #pause
   elif [ $ch = 214 ];then
        $PYTHON Relief Cyber Geek | lolcat
        echo "Relief"
        #pause
   elif [ $ch = 215 ];then
        $PYTHON Relief2 Cyber Geek | lolcat
        echo "Relief2"
        #pause
   elif [ $ch = 216 ];then
        $PYTHON Reverse Cyber Geek | lolcat
        echo "Reverse"
        #pause
   elif [ $ch = 217 ];then
        $PYTHON Roman Cyber Geek | lolcat
        echo "Roman"
        #pause
   elif [ $ch = 218 ];then
        $PYTHON Rot13 Cyber Geek | lolcat
        echo "Rot13"
        #pause
   elif [ $ch = 219 ];then
        $PYTHON Rotated Cyber Geek | lolcat
        echo "Rotated"
        #pause
   elif [ $ch = 220 ];then
        $PYTHON Rounded Cyber Geek | lolcat
        echo "Rounded"
        #pause
   elif [ $ch = 221 ];then
        $PYTHON 'Rowan Cap' Cyber Geek | lolcat
        echo "'Rowan Cap'"
        #pause
   elif [ $ch = 222 ];then
        $PYTHON Rozzo Cyber Geek | lolcat
        echo "Rozzo"
        #pause
   elif [ $ch = 223 ];then
        $PYTHON Runic Cyber Geek | lolcat
        echo "Runic"
        #pause
   elif [ $ch = 224 ];then
        $PYTHON Runyc Cyber Geek | lolcat
        echo "Runyc"
        #pause
   elif [ $ch = 225 ];then
        $PYTHON 'S Blood' Cyber Geek | lolcat
        echo "'S Blood'"
        #pause
   elif [ $ch = 226 ];then
        $PYTHON 'SL Script' Cyber Geek | lolcat
        echo "'SL Script'"
        #pause
   elif [ $ch = 227 ];then
        $PYTHON 'Santa Clara' Cyber Geek | lolcat
        echo "'Santa Clara'"
        #pause
   elif [ $ch = 228 ];then
        $PYTHON Script Cyber Geek | lolcat
        echo "Script"
        #pause
   elif [ $ch = 229 ];then
        $PYTHON Serifcap Cyber Geek | lolcat
        echo "Serifcap"
        #pause
   elif [ $ch = 230 ];then
        $PYTHON Shadow Cyber Geek | lolcat
        echo "Shadow"
        #pause
   elif [ $ch = 231 ];then
        $PYTHON Shimrod Cyber Geek | lolcat
        echo "Shimrod"
        #pause
   elif [ $ch = 232 ];then
        $PYTHON Short Cyber Geek | lolcat
        echo "Short"
        #pause
   elif [ $ch = 233 ];then
        $PYTHON 'Slant Relief' Cyber Geek | lolcat
        echo "'Slant Relief'"
        #pause
   elif [ $ch = 234 ];then
        $PYTHON Slant Cyber Geek | lolcat
        echo "Slant"
        #pause
   elif [ $ch = 235 ];then
        $PYTHON Slide Cyber Geek | lolcat
        echo "Slide"
        #pause
   elif [ $ch = 236 ];then
        $PYTHON 'Small Caps' Cyber Geek | lolcat
        echo "'Small Caps'"
        #pause
   elif [ $ch = 237 ];then
        $PYTHON 'Small Isometric1' Cyber Geek | lolcat
        echo "'Small Isometric1'"
        #pause
   elif [ $ch = 238 ];then
        $PYTHON 'Small Keyboard' Cyber Geek | lolcat
        echo "'Small Keyboard'"
        #pause
   elif [ $ch = 239 ];then
        $PYTHON 'Small Poison' Cyber Geek | lolcat
        echo "'Small Poison'"
        #pause
   elif [ $ch = 240 ];then
        $PYTHON 'Small Script' Cyber Geek | lolcat
        echo "'Small Script'"
        #pause
   elif [ $ch = 241 ];then
        $PYTHON 'Small Shadow' Cyber Geek | lolcat
        echo "'Small Shadow'"
        #pause
   elif [ $ch = 242 ];then
        $PYTHON 'Small Slant' Cyber Geek | lolcat
        echo "'Small Slant'"
        #pause
   elif [ $ch = 243 ];then
        $PYTHON 'Small Tengwar' Cyber Geek | lolcat
        echo "'Small Tengwar'"
        #pause
   elif [ $ch = 244 ];then
        $PYTHON Small Cyber Geek | lolcat
        echo "Small"
        #pause
   elif [ $ch = 245 ];then
        $PYTHON Soft Cyber Geek | lolcat
        echo "Soft"
        #pause
   elif [ $ch = 246 ];then
        $PYTHON Speed Cyber Geek | lolcat
        echo "Speed"
        #pause
   elif [ $ch = 247 ];then
        $PYTHON Spliff Cyber Geek | lolcat
        echo "Spliff"
        #pause
   elif [ $ch = 248 ];then
        $PYTHON Stacey Cyber Geek | lolcat
        echo "Stacey"
        #pause
   elif [ $ch = 249 ];then
        $PYTHON Stampate Cyber Geek | lolcat
        echo "Stampate"
        #pause
   elif [ $ch = 250 ];then
        $PYTHON Stampatello Cyber Geek | lolcat
        echo "Stampatello"
        #pause
   elif [ $ch = 251 ];then
        $PYTHON Standard Cyber Geek | lolcat
        echo "Standard"
        #pause
   elif [ $ch = 252 ];then
        $PYTHON 'Star Strips' Cyber Geek | lolcat
        echo "'Star Strips'"
        #pause
   elif [ $ch = 253 ];then
        $PYTHON 'Star Wars' Cyber Geek | lolcat
        echo "'Star Wars'"
        #pause
   elif [ $ch = 254 ];then
        $PYTHON Stellar Cyber Geek | lolcat
        echo "Stellar"
        #pause
   elif [ $ch = 255 ];then
        $PYTHON Stforek Cyber Geek | lolcat
        echo "Stforek"
        #pause
   elif [ $ch = 256 ];then
        $PYTHON 'Stick Letters' Cyber Geek | lolcat
        echo "'Stick Letters'"
        #pause
   elif [ $ch = 257 ];then
        $PYTHON Stop Cyber Geek | lolcat
        echo "Stop"
        #pause
   elif [ $ch = 258 ];then
        $PYTHON Straight Cyber Geek | lolcat
        echo "Straight"
        #pause
   elif [ $ch = 259 ];then
        $PYTHON 'Stronger Than All' Cyber Geek | lolcat
        echo "'Stronger Than All'"
        #pause
   elif [ $ch = 260 ];then
        $PYTHON Sub-Zero Cyber Geek | lolcat
        echo "Sub-Zero"
        #pause
   elif [ $ch = 261 ];then
        $PYTHON 'Swamp Land' Cyber Geek | lolcat
        echo "'Swamp Land'"
        #pause
   elif [ $ch = 262 ];then
        $PYTHON Swan Cyber Geek | lolcat
        echo "Swan"
        #pause
   elif [ $ch = 263 ];then
        $PYTHON Sweet Cyber Geek | lolcat
        echo "Sweet"
        #pause
   elif [ $ch = 264 ];then
        $PYTHON THIS Cyber Geek | lolcat
        echo "THIS"
        #pause
   elif [ $ch = 265 ];then
        $PYTHON Tanja Cyber Geek | lolcat
        echo "Tanja"
        #pause
   elif [ $ch = 266 ];then
        $PYTHON Tengwar Cyber Geek | lolcat
        echo "Tengwar"
        #pause
   elif [ $ch = 267 ];then
        $PYTHON Term Cyber Geek | lolcat
        echo "Term"
        #pause
   elif [ $ch = 268 ];then
        $PYTHON Test1 Cyber Geek | lolcat
        echo "Test1"
        #pause
   elif [ $ch = 269 ];then
        $PYTHON 'The Edge' Cyber Geek | lolcat
        echo "'The Edge'"
        #pause
   elif [ $ch = 270 ];then
        $PYTHON Thick Cyber Geek | lolcat
        echo "Thick"
        #pause
   elif [ $ch = 271 ];then
        $PYTHON Thin Cyber Geek | lolcat
        echo "Thin"
        #pause
   elif [ $ch = 272 ];then
        $PYTHON Thorned Cyber Geek | lolcat
        echo "Thorned"
        #pause
   elif [ $ch = 273 ];then
        $PYTHON 'Three Point' Cyber Geek | lolcat
        echo "'Three Point'"
        #pause
   elif [ $ch = 274 ];then
        $PYTHON 'Ticks Slant' Cyber Geek | lolcat
        echo "'Ticks Slant'"
        #pause
   elif [ $ch = 275 ];then
        $PYTHON Ticks Cyber Geek | lolcat
        echo "Ticks"
        #pause
   elif [ $ch = 276 ];then
        $PYTHON Tiles Cyber Geek | lolcat
        echo "Tiles"
        #pause
   elif [ $ch = 277 ];then
        $PYTHON Tinker-Toy Cyber Geek | lolcat
        echo "Tinker-Toy"
        #pause
   elif [ $ch = 278 ];then
        $PYTHON Tombstone Cyber Geek | lolcat
        echo "Tombstone"
        #pause
   elif [ $ch = 279 ];then
        $PYTHON Train Cyber Geek | lolcat
        echo "Train"
        #pause
   elif [ $ch = 280 ];then
        $PYTHON Trek Cyber Geek | lolcat
        echo "Trek"
        #pause
   elif [ $ch = 281 ];then
        $PYTHON Tsalagi Cyber Geek | lolcat
        echo "Tsalagi"
        #pause
   elif [ $ch = 282 ];then
        $PYTHON Tubular Cyber Geek | lolcat
        echo "Tubular"
        #pause
   elif [ $ch = 283 ];then
        $PYTHON Twisted Cyber Geek | lolcat
        echo "Twisted"
        #pause
   elif [ $ch = 284 ];then
        $PYTHON 'Two Point' Cyber Geek | lolcat
        echo "'Two Point'"
        #pause
   elif [ $ch = 285 ];then
        $PYTHON 'USA Flag' Cyber Geek | lolcat
        echo "'USA Flag'"
        #pause
   elif [ $ch = 286 ];then
        $PYTHON Univers Cyber Geek | lolcat
        echo "Univers"
        #pause
   elif [ $ch = 287 ];then
        $PYTHON Varsity Cyber Geek | lolcat
        echo "Varsity"
        #pause
   elif [ $ch = 288 ];then
        $PYTHON Wavy Cyber Geek | lolcat
        echo "Wavy"
        #pause
   elif [ $ch = 289 ];then
        $PYTHON Weird Cyber Geek | lolcat
        echo "Weird"
        #pause
   elif [ $ch = 290 ];then
        $PYTHON 'Wet Letter' Cyber Geek | lolcat
        echo "'Wet Letter'"
        #pause
   elif [ $ch = 291 ];then
        $PYTHON Whimsy Cyber Geek | lolcat
        echo "Whimsy"
        #pause
   elif [ $ch = 292 ];then
        $PYTHON Wow Cyber Geek | lolcat
        echo "Wow"
        #pause
   elif [ $ch = 293 ];then
        $PYTHON alligator3 Cyber Geek | lolcat
        echo "alligator3"
        #pause
   elif [ $ch = 294 ];then
        $PYTHON amc3line Cyber Geek | lolcat
        echo "amc3line"
        #pause
   elif [ $ch = 295 ];then
        $PYTHON amc3liv1 Cyber Geek | lolcat
        echo "amc3liv1"
        #pause
   elif [ $ch = 296 ];then
        $PYTHON amcaaa01 Cyber Geek | lolcat
        echo "amcaaa01"
        #pause
   elif [ $ch = 297 ];then
        $PYTHON amcneko Cyber Geek | lolcat
        echo "amcneko"
        #pause
   elif [ $ch = 298 ];then
        $PYTHON amcrazo2 Cyber Geek | lolcat
        echo "amcrazo2"
        #pause
   elif [ $ch = 299 ];then
        $PYTHON amcrazor Cyber Geek | lolcat
        echo "amcrazor"
        #pause
   elif [ $ch = 300 ];then
        $PYTHON amcslash Cyber Geek | lolcat
        echo "amcslash"
        #pause
   elif [ $ch = 301 ];then
        $PYTHON amcslder Cyber Geek | lolcat
        echo "amcslder"
        #pause
   elif [ $ch = 302 ];then
        $PYTHON amcthin Cyber Geek | lolcat
        echo "amcthin"
        #pause
   elif [ $ch = 303 ];then
        $PYTHON amctubes Cyber Geek | lolcat
        echo "amctubes"
        #pause
   elif [ $ch = 304 ];then
        $PYTHON amcun1 Cyber Geek | lolcat
        echo "amcun1"
        #pause
   elif [ $ch = 305 ];then
        $PYTHON ascii_new_roman Cyber Geek | lolcat
        echo "ascii_new_roman"
        #pause
   elif [ $ch = 306 ];then
        $PYTHON banner Cyber Geek | lolcat
        echo "banner"
        #pause
   elif [ $ch = 307 ];then
        $PYTHON big Cyber Geek | lolcat
        echo "big"
        #pause
   elif [ $ch = 308 ];then
        $PYTHON bigchief Cyber Geek | lolcat
        echo "bigchief"
        #pause
   elif [ $ch = 309 ];then
        $PYTHON block Cyber Geek | lolcat
        echo "block"
        #pause
   elif [ $ch = 310 ];then
        $PYTHON broadway_kb Cyber Geek | lolcat
        echo "broadway_kb"
        #pause
   elif [ $ch = 311 ];then
        $PYTHON bubble Cyber Geek | lolcat
        echo "bubble"
        #pause
   elif [ $ch = 312 ];then
        $PYTHON calgphy2 Cyber Geek | lolcat
        echo "calgphy2"
        #pause
   elif [ $ch = 313 ];then
        $PYTHON cosmic Cyber Geek | lolcat
        echo "cosmic"
        #pause
   elif [ $ch = 314 ];then
        $PYTHON dancingfont Cyber Geek | lolcat
        echo "dancingfont"
        #pause
   elif [ $ch = 315 ];then
        $PYTHON defleppard Cyber Geek | lolcat
        echo "defleppard"
        #pause
   elif [ $ch = 316 ];then
        $PYTHON dietcola Cyber Geek | lolcat
        echo "dietcola"
        #pause
   elif [ $ch = 317 ];then
        $PYTHON digital Cyber Geek | lolcat
        echo "digital"
        #pause
   elif [ $ch = 318 ];then
        $PYTHON dosrebel Cyber Geek | lolcat
        echo "dosrebel"
        #pause
   elif [ $ch = 319 ];then
        $PYTHON dotmatrix Cyber Geek | lolcat
        echo "dotmatrix"
        #pause
   elif [ $ch = 320 ];then
        $PYTHON doubleshorts Cyber Geek | lolcat
        echo "doubleshorts"
        #pause
   elif [ $ch = 321 ];then
        $PYTHON drpepper Cyber Geek | lolcat
        echo "drpepper"
        #pause
   elif [ $ch = 322 ];then
        $PYTHON eftichess Cyber Geek | lolcat
        echo "eftichess"
        #pause
   elif [ $ch = 323 ];then
        $PYTHON eftifont Cyber Geek | lolcat
        echo "eftifont"
        #pause
   elif [ $ch = 324 ];then
        $PYTHON eftipiti Cyber Geek | lolcat
        echo "eftipiti"
        #pause
   elif [ $ch = 325 ];then
        $PYTHON eftirobot Cyber Geek | lolcat
        echo "eftirobot"
        #pause
   elif [ $ch = 326 ];then
        $PYTHON eftitalic Cyber Geek | lolcat
        echo "eftitalic"
        #pause
   elif [ $ch = 327 ];then
        $PYTHON eftiwall Cyber Geek | lolcat
        echo "eftiwall"
        #pause
   elif [ $ch = 328 ];then
        $PYTHON eftiwater Cyber Geek | lolcat
        echo "eftiwater"
        #pause
   elif [ $ch = 329 ];then
        $PYTHON fire_font-k Cyber Geek | lolcat
        echo "fire_font-k"
        #pause
   elif [ $ch = 330 ];then
        $PYTHON fire_font-s Cyber Geek | lolcat
        echo "fire_font-s"
        #pause
   elif [ $ch = 331 ];then
        $PYTHON flowerpower Cyber Geek | lolcat
        echo "flowerpower"
        #pause
   elif [ $ch = 332 ];then
        $PYTHON fourtops Cyber Geek | lolcat
        echo "fourtops"
        #pause
   elif [ $ch = 333 ];then
        $PYTHON funface Cyber Geek | lolcat
        echo "funface"
        #pause
   elif [ $ch = 334 ];then
        $PYTHON funfaces Cyber Geek | lolcat
        echo "funfaces"
        #pause
   elif [ $ch = 335 ];then
        $PYTHON heart_left Cyber Geek | lolcat
        echo "heart_left"
        #pause
   elif [ $ch = 336 ];then
        $PYTHON heart_right Cyber Geek | lolcat
        echo "heart_right"
        #pause
   elif [ $ch = 337 ];then
        $PYTHON henry3d Cyber Geek | lolcat
        echo "henry3d"
        #pause
   elif [ $ch = 338 ];then
        $PYTHON horizontalleft Cyber Geek | lolcat
        echo "horizontalleft"
        #pause
   elif [ $ch = 339 ];then
        $PYTHON horizontalright Cyber Geek | lolcat
        echo "horizontalright"
        #pause
   elif [ $ch = 340 ];then
        $PYTHON ivrit Cyber Geek | lolcat
        echo "ivrit"
        #pause
   elif [ $ch = 341 ];then
        $PYTHON kontoslant Cyber Geek | lolcat
        echo "kontoslant"
        #pause
   elif [ $ch = 342 ];then
        $PYTHON larry3d Cyber Geek | lolcat
        echo "larry3d"
        #pause
   elif [ $ch = 343 ];then
        $PYTHON lean Cyber Geek | lolcat
        echo "lean"
        #pause
   elif [ $ch = 344 ];then
        $PYTHON lildevil Cyber Geek | lolcat
        echo "lildevil"
        #pause
   elif [ $ch = 345 ];then
        $PYTHON lineblocks Cyber Geek | lolcat
        echo "lineblocks"
        #pause
   elif [ $ch = 346 ];then
        $PYTHON maxiwi Cyber Geek | lolcat
        echo "maxiwi"
        #pause
   elif [ $ch = 347 ];then
        $PYTHON mini Cyber Geek | lolcat
        echo "mini"
        #pause
   elif [ $ch = 348 ];then
        $PYTHON miniwi Cyber Geek | lolcat
        echo "miniwi"
        #pause
   elif [ $ch = 349 ];then
        $PYTHON mnemonic Cyber Geek | lolcat
        echo "mnemonic"
        #pause
   elif [ $ch = 350 ];then
        $PYTHON ntgreek Cyber Geek | lolcat
        echo "ntgreek"
        #pause
   elif [ $ch = 351 ];then
        $PYTHON oldbanner Cyber Geek | lolcat
        echo "oldbanner"
        #pause
   elif [ $ch = 352 ];then
        $PYTHON peaksslant Cyber Geek | lolcat
        echo "peaksslant"
        #pause
   elif [ $ch = 353 ];then
        $PYTHON red_phoenix Cyber Geek | lolcat
        echo "red_phoenix"
        #pause
   elif [ $ch = 354 ];then
        $PYTHON rev Cyber Geek | lolcat
        echo "rev"
        #pause
   elif [ $ch = 355 ];then
        $PYTHON rowancap Cyber Geek | lolcat
        echo "rowancap"
        #pause
   elif [ $ch = 356 ];then
        $PYTHON s-relief Cyber Geek | lolcat
        echo "s-relief"
        #pause
   elif [ $ch = 357 ];then
        $PYTHON santaclara Cyber Geek | lolcat
        echo "santaclara"
        #pause
   elif [ $ch = 358 ];then
        $PYTHON sblood Cyber Geek | lolcat
        echo "sblood"
        #pause
   elif [ $ch = 359 ];then
        $PYTHON script Cyber Geek | lolcat
        echo "script"
        #pause
   elif [ $ch = 360 ];then
        $PYTHON shadow Cyber Geek | lolcat
        echo "shadow"
        #pause
   elif [ $ch = 361 ];then
        $PYTHON slant Cyber Geek | lolcat
        echo "slant"
        #pause
   elif [ $ch = 362 ];then
        $PYTHON slscript Cyber Geek | lolcat
        echo "slscript"
        #pause
   elif [ $ch = 363 ];then
        $PYTHON small Cyber Geek | lolcat
        echo "small"
        #pause
   elif [ $ch = 364 ];then
        $PYTHON smallcaps Cyber Geek | lolcat
        echo "smallcaps"
        #pause
   elif [ $ch = 365 ];then
        $PYTHON smisome1 Cyber Geek | lolcat
        echo "smisome1"
        #pause
   elif [ $ch = 366 ];then
        $PYTHON smkeyboard Cyber Geek | lolcat
        echo "smkeyboard"
        #pause
   elif [ $ch = 367 ];then
        $PYTHON smpoison Cyber Geek | lolcat
        echo "smpoison"
        #pause
   elif [ $ch = 368 ];then
        $PYTHON smscript Cyber Geek | lolcat
        echo "smscript"
        #pause
   elif [ $ch = 369 ];then
        $PYTHON smshadow Cyber Geek | lolcat
        echo "smshadow"
        #pause
   elif [ $ch = 370 ];then
        $PYTHON smslant Cyber Geek | lolcat
        echo "smslant"
        #pause
   elif [ $ch = 371 ];then
        $PYTHON smtengwar Cyber Geek | lolcat
        echo "smtengwar"
        #pause
   elif [ $ch = 372 ];then
        $PYTHON standard Cyber Geek | lolcat
        echo "standard"
        #pause
   elif [ $ch = 373 ];then
        $PYTHON starstrips Cyber Geek | lolcat
        echo "starstrips"
        #pause
   elif [ $ch = 374 ];then
        $PYTHON starwars Cyber Geek | lolcat
        echo "starwars"
        #pause
   elif [ $ch = 375 ];then
        $PYTHON swampland Cyber Geek | lolcat
        echo "swampland"
        #pause
   elif [ $ch = 376 ];then
        $PYTHON term Cyber Geek | lolcat
        echo "term"
        #pause
   elif [ $ch = 377 ];then
        $PYTHON threepoint Cyber Geek | lolcat
        echo "threepoint"
        #pause
   elif [ $ch = 378 ];then
        $PYTHON ticksslant Cyber Geek | lolcat
        echo "ticksslant"
        #pause
   elif [ $ch = 379 ];then
        $PYTHON twopoint Cyber Geek | lolcat
        echo "twopoint"
        #pause
   elif [ $ch = 380 ];then
        $PYTHON usaflag Cyber Geek | lolcat
        echo "usaflag"
        #pause
   elif [ $ch = 381 ];then
        $PYTHON wetletter Cyber Geek | lolcat
        echo "wetletter"
        #pause


    elif [ "$ch" = "$(whoami)" ];then
        exit
    else
        echo -e "\e[5;31m \e[4;31m \e[1;31m \e[3;31m Invalid Input !!! \e[0m"
        #pause
    fi
done
