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
        figlet  $(whoami) | lolcat
        echo "figlet"
        #pause
    elif [ $ch = 2 ];then
        $PYTHON 1Row $(whoami) | lolcat
        echo "1Row"
        #pause
    elif [ $ch = 3 ];then
        $PYTHON 3-D $(whoami) | lolcat
        echo "3-D"
        #pause
    elif [ $ch = 4 ];then
        $PYTHON '3D Diagonal' $(whoami) | lolcat
        echo "'3D Diagonal'"
        #pause
    elif [ $ch = 5 ];then
        $PYTHON 3D-ASCII $(whoami) | lolcat
        echo "3D-ASCII"
        #pause
   elif [ $ch = 6 ];then
        $PYTHON 3d $(whoami) | lolcat
        echo "3d"
        #pause
   elif [ $ch = 7 ];then
        $PYTHON 3d_diagonal $(whoami) | lolcat
        echo "3d_diagonal"
        #pause
   elif [ $ch = 8 ];then
        $PYTHON 3x5 $(whoami) | lolcat
        echo "3x5"
        #pause
   elif [ $ch = 9 ];then
        $PYTHON 4Max $(whoami) | lolcat
        echo "4Max"
        #pause
   elif [ $ch = 10 ];then
        $PYTHON '5 Line Oblique' $(whoami) | lolcat
        echo "'5 Line Oblique'"
        #pause
   elif [ $ch = 11 ];then
        $PYTHON 5lineoblique $(whoami) | lolcat
        echo "5lineoblique"
        #pause
   elif [ $ch = 12 ];then
        $PYTHON 'AMC 3 Line' $(whoami) | lolcat
        echo "'AMC 3 Line'"
        #pause
   elif [ $ch = 13 ];then
        $PYTHON 'AMC 3 Liv1' $(whoami) | lolcat
        echo "'AMC 3 Liv1'"
        #pause
   elif [ $ch = 14 ];then
        $PYTHON 'AMC AAA01' $(whoami) | lolcat
        echo "'AMC AAA01'"
        #pause
   elif [ $ch = 15 ];then
        $PYTHON 'AMC Neko' $(whoami) | lolcat
        echo "'AMC Neko'"
        #pause
   elif [ $ch = 16 ];then
        $PYTHON 'AMC Razor' $(whoami) | lolcat
        echo "'AMC Razor'"
        #pause
   elif [ $ch = 17 ];then
        $PYTHON 'AMC Razor2' $(whoami) | lolcat
        echo "'AMC Razor2'"
        #pause
   elif [ $ch = 18 ];then
        $PYTHON 'AMC Slash' $(whoami) | lolcat
        echo "'AMC Slash'"
        #pause
   elif [ $ch = 19 ];then
        $PYTHON 'AMC Slider' $(whoami) | lolcat
        echo "'AMC Slider'"
        #pause
   elif [ $ch = 20 ];then
        $PYTHON 'AMC Thin' $(whoami) | lolcat
        echo "'AMC Thin'"
        #pause
   elif [ $ch = 21 ];then
        $PYTHON 'AMC Tubes' $(whoami) | lolcat
        echo "'AMC Tubes'"
        #pause
   elif [ $ch = 22 ];then
        $PYTHON 'AMC Untitled' $(whoami) | lolcat
        echo "'AMC Untitled'"
        #pause
   elif [ $ch = 23 ];then
        $PYTHON 'ANSI Regular' $(whoami) | lolcat
        echo "'ANSI Regular'"
        #pause
   elif [ $ch = 24 ];then
        $PYTHON 'ANSI Shadow' $(whoami) | lolcat
        echo "'ANSI Shadow'"
        #pause
   elif [ $ch = 25 ];then
        $PYTHON 'ASCII New Roman' $(whoami) | lolcat
        echo "'ASCII New Roman'"
        #pause
   elif [ $ch = 26 ];then
        $PYTHON Acrobatic $(whoami) | lolcat
        echo "Acrobatic"
        #pause
   elif [ $ch = 27 ];then
        $PYTHON Alligator $(whoami) | lolcat
        echo "Alligator"
        #pause
   elif [ $ch = 28 ];then
        $PYTHON Alligator2 $(whoami) | lolcat
        echo "Alligator2"
        #pause
   elif [ $ch = 29 ];then
        $PYTHON Alpha $(whoami) | lolcat
        echo "Alpha"
        #pause
   elif [ $ch = 30 ];then
        $PYTHON Alphabet $(whoami) | lolcat
        echo "Alphabet"
        #pause
   elif [ $ch = 31 ];then
        $PYTHON Arrows $(whoami) | lolcat
        echo "Arrows"
        #pause
   elif [ $ch = 32 ];then
        $PYTHON Avatar $(whoami) | lolcat
        echo "Avatar"
        #pause
   elif [ $ch = 33 ];then
        $PYTHON B1FF $(whoami) | lolcat
        echo "B1FF"
        #pause
   elif [ $ch = 34 ];then
        $PYTHON Banner $(whoami) | lolcat
        echo "Banner"
        #pause
   elif [ $ch = 35 ];then
        $PYTHON Banner3-D $(whoami) | lolcat
        echo "Banner3-D"
        #pause
   elif [ $ch = 36 ];then
        $PYTHON Banner3 $(whoami) | lolcat
        echo "Banner3"
        #pause
   elif [ $ch = 37 ];then
        $PYTHON Banner4 $(whoami) | lolcat
        echo "Banner4"
        #pause
   elif [ $ch = 38 ];then
        $PYTHON Barbwire $(whoami) | lolcat
        echo "Barbwire"
        #pause
   elif [ $ch = 39 ];then
        $PYTHON Basic $(whoami) | lolcat
        echo "Basic"
        #pause
   elif [ $ch = 40 ];then
        $PYTHON Bear $(whoami) | lolcat
        echo "Bear"
        #pause
   elif [ $ch = 41 ];then
        $PYTHON Bell $(whoami) | lolcat
        echo "Bell"
        #pause
   elif [ $ch = 42 ];then
        $PYTHON Benjamin $(whoami) | lolcat
        echo "Benjamin"
        #pause
   elif [ $ch = 43 ];then
        $PYTHON 'Big Chief' $(whoami) | lolcat
        echo "'Big Chief'"
        #pause
   elif [ $ch = 44 ];then
        $PYTHON 'Big Money-ne' $(whoami) | lolcat
        echo "'Big Money-ne'"
        #pause
   elif [ $ch = 45 ];then
        $PYTHON 'Big Money-nw' $(whoami) | lolcat
        echo "'Big Money-nw'"
        #pause
   elif [ $ch = 46 ];then
        $PYTHON 'Big Money-se' $(whoami) | lolcat
        echo "'Big Money-se'"
        #pause
   elif [ $ch = 47 ];then
        $PYTHON 'Big Money-sw' $(whoami) | lolcat
        echo "'Big Money-sw'"
        #pause
   elif [ $ch = 48 ];then
        $PYTHON Big $(whoami) | lolcat
        echo "Big"
        #pause
   elif [ $ch = 49 ];then
        $PYTHON Bigfig $(whoami) | lolcat
        echo "Bigfig"
        #pause
   elif [ $ch = 50 ];then
        $PYTHON Binary $(whoami) | lolcat
        echo "Binary"
        #pause
   elif [ $ch = 51 ];then
        $PYTHON Block $(whoami) | lolcat
        echo "Block"
        #pause
   elif [ $ch = 52 ];then
        $PYTHON Blocks $(whoami) | lolcat
        echo "Blocks"
        #pause
   elif [ $ch = 53 ];then
        $PYTHON Bloody $(whoami) | lolcat
        echo "Bloody"
        #pause
   elif [ $ch = 54 ];then
        $PYTHON Bolger $(whoami) | lolcat
        echo "Bolger"
        #pause
   elif [ $ch = 55 ];then
        $PYTHON Braced $(whoami) | lolcat
        echo "Braced"
        #pause
   elif [ $ch = 56 ];then
        $PYTHON Bright $(whoami) | lolcat
        echo "Bright"
        #pause
   elif [ $ch = 57 ];then
        $PYTHON 'Broadway KB' $(whoami) | lolcat
        echo "'Broadway KB'"
        #pause
   elif [ $ch = 58 ];then
        $PYTHON Broadway $(whoami) | lolcat
        echo "Broadway"
        #pause
   elif [ $ch = 59 ];then
        $PYTHON Bubble $(whoami) | lolcat
        echo "Bubble"
        #pause
   elif [ $ch = 60 ];then
        $PYTHON Bulbhead $(whoami) | lolcat
        echo "Bulbhead"
        #pause
   elif [ $ch = 61 ];then
        $PYTHON Caligraphy $(whoami) | lolcat
        echo "Caligraphy"
        #pause
   elif [ $ch = 62 ];then
        $PYTHON Caligraphy2 $(whoami) | lolcat
        echo "Caligraphy2"
        #pause
   elif [ $ch = 63 ];then
        $PYTHON 'Calvin S' $(whoami) | lolcat
        echo "'Calvin S'"
        #pause
   elif [ $ch = 64 ];then
        $PYTHON Cards $(whoami) | lolcat
        echo "Cards"
        #pause
   elif [ $ch = 65 ];then
        $PYTHON Catwalk $(whoami) | lolcat
        echo "Catwalk"
        #pause
   elif [ $ch = 66 ];then
        $PYTHON Chiseled $(whoami) | lolcat
        echo "Chiseled"
        #pause
   elif [ $ch = 67 ];then
        $PYTHON Chunky $(whoami) | lolcat
        echo "Chunky"
        #pause
   elif [ $ch = 68 ];then
        $PYTHON Coinstak $(whoami) | lolcat
        echo "Coinstak"
        #pause
   elif [ $ch = 69 ];then
        $PYTHON Cola $(whoami) | lolcat
        echo "Cola"
        #pause
   elif [ $ch = 70 ];then
        $PYTHON Colossal $(whoami) | lolcat
        echo "Colossal"
        #pause
   elif [ $ch = 71 ];then
        $PYTHON Computer $(whoami) | lolcat
        echo "Computer"
        #pause
   elif [ $ch = 72 ];then
        $PYTHON Contessa $(whoami) | lolcat
        echo "Contessa"
        #pause
   elif [ $ch = 73 ];then
        $PYTHON Contrast $(whoami) | lolcat
        echo "Contrast"
        #pause
   elif [ $ch = 74 ];then
        $PYTHON Cosmike $(whoami) | lolcat
        echo "Cosmike"
        #pause
   elif [ $ch = 75 ];then
        $PYTHON Crawford $(whoami) | lolcat
        echo "Crawford"
        #pause
   elif [ $ch = 76 ];then
        $PYTHON Crawford2 $(whoami) | lolcat
        echo "Crawford2"
        #pause
   elif [ $ch = 77 ];then
        $PYTHON Crazy $(whoami) | lolcat
        echo "Crazy"
        #pause
   elif [ $ch = 78 ];then
        $PYTHON Cricket $(whoami) | lolcat
        echo "Cricket"
        #pause
   elif [ $ch = 79 ];then
        $PYTHON Cursive $(whoami) | lolcat
        echo "Cursive"
        #pause
   elif [ $ch = 80 ];then
        $PYTHON Cyberlarge $(whoami) | lolcat
        echo "Cyberlarge"
        #pause
   elif [ $ch = 81 ];then
        $PYTHON Cybermedium $(whoami) | lolcat
        echo "Cybermedium"
        #pause
   elif [ $ch = 82 ];then
        $PYTHON Cybersmall $(whoami) | lolcat
        echo "Cybersmall"
        #pause
   elif [ $ch = 83 ];then
        $PYTHON Cygnet $(whoami) | lolcat
        echo "Cygnet"
        #pause
   elif [ $ch = 84 ];then
        $PYTHON DANC4 $(whoami) | lolcat
        echo "DANC4"
        #pause
   elif [ $ch = 85 ];then
        $PYTHON 'DOS Rebel' $(whoami) | lolcat
        echo "'DOS Rebel'"
        #pause
   elif [ $ch = 86 ];then
        $PYTHON DWhistled $(whoami) | lolcat
        echo "DWhistled"
        #pause
   elif [ $ch = 87 ];then
        $PYTHON 'Dancing Font' $(whoami) | lolcat
        echo "'Dancing Font'"
        #pause
   elif [ $ch = 88 ];then
        $PYTHON Decimal $(whoami) | lolcat
        echo "Decimal"
        #pause
   elif [ $ch = 89 ];then
        $PYTHON 'Def Leppard' $(whoami) | lolcat
        echo "'Def Leppard'"
        #pause
   elif [ $ch = 90 ];then
        $PYTHON 'Delta Corps Priest 1' $(whoami) | lolcat
        echo "'Delta Corps Priest 1'"
        #pause
   elif [ $ch = 91 ];then
        $PYTHON Diamond $(whoami) | lolcat
        echo "Diamond"
        #pause
   elif [ $ch = 92 ];then
        $PYTHON 'Diet Cola' $(whoami) | lolcat
        echo "'Diet Cola'"
        #pause
   elif [ $ch = 93 ];then
        $PYTHON Digital $(whoami) | lolcat
        echo "Digital"
        #pause
   elif [ $ch = 94 ];then
        $PYTHON Doh $(whoami) | lolcat
        echo "Doh"
        #pause
   elif [ $ch = 95 ];then
        $PYTHON Doom $(whoami) | lolcat
        echo "Doom"
        #pause
   elif [ $ch = 96 ];then
        $PYTHON 'Dot Matrix' $(whoami) | lolcat
        echo "'Dot Matrix'"
        #pause
   elif [ $ch = 97 ];then
        $PYTHON 'Double Shorts' $(whoami) | lolcat
        echo "'Double Shorts'"
        #pause
   elif [ $ch = 98 ];then
        $PYTHON Double $(whoami) | lolcat
        echo "Double"
        #pause
   elif [ $ch = 99 ];then
        $PYTHON 'Dr Pepper' $(whoami) | lolcat
        echo "'Dr Pepper'"
        #pause
   elif [ $ch = 100 ];then
        $PYTHON 'Efti Chess' $(whoami) | lolcat
        echo "'Efti Chess'"
        #pause
   elif [ $ch = 101 ];then
        $PYTHON 'Efti Font' $(whoami) | lolcat
        echo "'Efti Font'"
        #pause
   elif [ $ch = 102 ];then
        $PYTHON 'Efti Italic' $(whoami) | lolcat
        echo "'Efti Italic'"
        #pause
   elif [ $ch = 103 ];then
        $PYTHON 'Efti Piti' $(whoami) | lolcat
        echo "'Efti Piti'"
        #pause
   elif [ $ch = 104 ];then
        $PYTHON 'Efti Robot' $(whoami) | lolcat
        echo "'Efti Robot'"
        #pause
   elif [ $ch = 105 ];then
        $PYTHON 'Efti Wall' $(whoami) | lolcat
        echo "'Efti Wall'"
        #pause
   elif [ $ch = 106 ];then
        $PYTHON 'Efti Water' $(whoami) | lolcat
        echo "'Efti Water'"
        #pause
   elif [ $ch = 107 ];then
        $PYTHON Electronic $(whoami) | lolcat
        echo "Electronic"
        #pause
   elif [ $ch = 108 ];then
        $PYTHON Elite $(whoami) | lolcat
        echo "Elite"
        #pause
   elif [ $ch = 109 ];then
        $PYTHON Epic $(whoami) | lolcat
        echo "Epic"
        #pause
   elif [ $ch = 110 ];then
        $PYTHON Fender $(whoami) | lolcat
        echo "Fender"
        #pause
   elif [ $ch = 111 ];then
        $PYTHON Filter $(whoami) | lolcat
        echo "Filter"
        #pause
   elif [ $ch = 112 ];then
        $PYTHON 'Fire Font-k' $(whoami) | lolcat
        echo "'Fire Font-k'"
        #pause
   elif [ $ch = 113 ];then
        $PYTHON 'Fire Font-s' $(whoami) | lolcat
        echo "'Fire Font-s'"
        #pause
   elif [ $ch = 114 ];then
        $PYTHON Flipped $(whoami) | lolcat
        echo "Flipped"
        #pause
   elif [ $ch = 115 ];then
        $PYTHON 'Flower Power' $(whoami) | lolcat
        echo "'Flower Power'"
        #pause
   elif [ $ch = 116 ];then
        $PYTHON 'Four Tops' $(whoami) | lolcat
        echo "'Four Tops'"
        #pause
   elif [ $ch = 117 ];then
        $PYTHON Fraktur $(whoami) | lolcat
        echo "Fraktur"
        #pause
   elif [ $ch = 118 ];then
        $PYTHON 'Fun Face' $(whoami) | lolcat
        echo "'Fun Face'"
        #pause
   elif [ $ch = 119 ];then
        $PYTHON 'Fun Faces' $(whoami) | lolcat
        echo "'Fun Faces'"
        #pause
   elif [ $ch = 120 ];then
        $PYTHON Fuzzy $(whoami) | lolcat
        echo "Fuzzy"
        #pause
   elif [ $ch = 121 ];then
        $PYTHON Georgi16 $(whoami) | lolcat
        echo "Georgi16"
        #pause
   elif [ $ch = 122 ];then
        $PYTHON Georgia11 $(whoami) | lolcat
        echo "Georgia11"
        #pause
   elif [ $ch = 123 ];then
        $PYTHON Ghost $(whoami) | lolcat
        echo "Ghost"
        #pause
   elif [ $ch = 124 ];then
        $PYTHON Ghoulish $(whoami) | lolcat
        echo "Ghoulish"
        #pause
   elif [ $ch = 125 ];then
        $PYTHON Glenyn $(whoami) | lolcat
        echo "Glenyn"
        #pause
   elif [ $ch = 126 ];then
        $PYTHON Goofy $(whoami) | lolcat
        echo "Goofy"
        #pause
   elif [ $ch = 127 ];then
        $PYTHON Gothic $(whoami) | lolcat
        echo "Gothic"
        #pause
   elif [ $ch = 128 ];then
        $PYTHON Graceful $(whoami) | lolcat
        echo "Graceful"
        #pause
   elif [ $ch = 129 ];then
        $PYTHON Gradient $(whoami) | lolcat
        echo "Gradient"
        #pause
   elif [ $ch = 130 ];then
        $PYTHON Graffiti $(whoami) | lolcat
        echo "Graffiti"
        #pause
   elif [ $ch = 131 ];then
        $PYTHON Greek $(whoami) | lolcat
        echo "Greek"
        #pause
   elif [ $ch = 132 ];then
        $PYTHON 'Heart Left' $(whoami) | lolcat
        echo "'Heart Left'"
        #pause
   elif [ $ch = 133 ];then
        $PYTHON 'Heart Right' $(whoami) | lolcat
        echo "'Heart Right'"
        #pause
   elif [ $ch = 134 ];then
        $PYTHON 'Henry 3D' $(whoami) | lolcat
        echo "'Henry 3D'"
        #pause
   elif [ $ch = 135 ];then
        $PYTHON Hex $(whoami) | lolcat
        echo "Hex"
        #pause
   elif [ $ch = 136 ];then
        $PYTHON Hieroglyphs $(whoami) | lolcat
        echo "Hieroglyphs"
        #pause
   elif [ $ch = 137 ];then
        $PYTHON Hollywood $(whoami) | lolcat
        echo "Hollywood"
        #pause
   elif [ $ch = 138 ];then
        $PYTHON 'Horizontal Left' $(whoami) | lolcat
        echo "'Horizontal Left'"
        #pause
   elif [ $ch = 139 ];then
        $PYTHON 'Horizontal Right' $(whoami) | lolcat
        echo "'Horizontal Right'"
        #pause
   elif [ $ch = 140 ];then
        $PYTHON ICL-1900 $(whoami) | lolcat
        echo "ICL-1900"
        #pause
   elif [ $ch = 141 ];then
        $PYTHON Impossible $(whoami) | lolcat
        echo "Impossible"
        #pause
   elif [ $ch = 142 ];then
        $PYTHON Invita $(whoami) | lolcat
        echo "Invita"
        #pause
   elif [ $ch = 143 ];then
        $PYTHON Isometric1 $(whoami) | lolcat
        echo "Isometric1"
        #pause
   elif [ $ch = 144 ];then
        $PYTHON Isometric2 $(whoami) | lolcat
        echo "Isometric2"
        #pause
   elif [ $ch = 145 ];then
        $PYTHON Isometric3 $(whoami) | lolcat
        echo "Isometric3"
        #pause
   elif [ $ch = 146 ];then
        $PYTHON Isometric4 $(whoami) | lolcat
        echo "Isometric4"
        #pause
   elif [ $ch = 147 ];then
        $PYTHON Italic $(whoami) | lolcat
        echo "Italic"
        #pause
   elif [ $ch = 148 ];then
        $PYTHON Ivrit $(whoami) | lolcat
        echo "Ivrit"
        #pause
   elif [ $ch = 149 ];then
        $PYTHON 'JS Block Letters' $(whoami) | lolcat
        echo "'JS Block Letters'"
        #pause
   elif [ $ch = 150 ];then
        $PYTHON 'JS Bracket Letters' $(whoami) | lolcat
        echo "'JS Bracket Letters'"
        #pause
   elif [ $ch = 151 ];then
        $PYTHON 'JS Capital Curves' $(whoami) | lolcat
        echo "'JS Capital Curves'"
        #pause
   elif [ $ch = 152 ];then
        $PYTHON 'JS Cursive' $(whoami) | lolcat
        echo "'JS Cursive'"
        #pause
   elif [ $ch = 153 ];then
        $PYTHON 'JS Stick Letters' $(whoami) | lolcat
        echo "'JS Stick Letters'"
        #pause
   elif [ $ch = 154 ];then
        $PYTHON Jacky $(whoami) | lolcat
        echo "Jacky"
        #pause
   elif [ $ch = 155 ];then
        $PYTHON Jazmine $(whoami) | lolcat
        echo "Jazmine"
        #pause
   elif [ $ch = 156 ];then
        $PYTHON Jerusalem $(whoami) | lolcat
        echo "Jerusalem"
        #pause
   elif [ $ch = 157 ];then
        $PYTHON Katakana $(whoami) | lolcat
        echo "Katakana"
        #pause
   elif [ $ch = 158 ];then
        $PYTHON Kban $(whoami) | lolcat
        echo "Kban"
        #pause
   elif [ $ch = 159 ];then
        $PYTHON Keyboard $(whoami) | lolcat
        echo "Keyboard"
        #pause
   elif [ $ch = 160 ];then
        $PYTHON Knob $(whoami) | lolcat
        echo "Knob"
        #pause
   elif [ $ch = 161 ];then
        $PYTHON 'Konto Slant' $(whoami) | lolcat
        echo "'Konto Slant'"
        #pause
   elif [ $ch = 162 ];then
        $PYTHON Konto $(whoami) | lolcat
        echo "Konto"
        #pause
   elif [ $ch = 163 ];then
        $PYTHON LCD $(whoami) | lolcat
        echo "LCD"
        #pause
   elif [ $ch = 164 ];then
        $PYTHON 'Larry 3D 2' $(whoami) | lolcat
        echo "'Larry 3D 2'"
        #pause
   elif [ $ch = 165 ];then
        $PYTHON 'Larry 3D' $(whoami) | lolcat
        echo "'Larry 3D'"
        #pause
   elif [ $ch = 166 ];then
        $PYTHON Lean $(whoami) | lolcat
        echo "Lean"
        #pause
   elif [ $ch = 167 ];then
        $PYTHON Letters $(whoami) | lolcat
        echo "Letters"
        #pause
   elif [ $ch = 168 ];then
        $PYTHON 'Lil Devil' $(whoami) | lolcat
        echo "'Lil Devil'"
        #pause
   elif [ $ch = 169 ];then
        $PYTHON 'Line Blocks' $(whoami) | lolcat
        echo "'Line Blocks'"
        #pause
   elif [ $ch = 170 ];then
        $PYTHON Linux $(whoami) | lolcat
        echo "Linux"
        #pause
   elif [ $ch = 171 ];then
        $PYTHON Lockergnome $(whoami) | lolcat
        echo "Lockergnome"
        #pause
   elif [ $ch = 172 ];then
        $PYTHON Madrid $(whoami) | lolcat
        echo "Madrid"
        #pause
   elif [ $ch = 173 ];then
        $PYTHON Marquee $(whoami) | lolcat
        echo "Marquee"
        #pause
   elif [ $ch = 174 ];then
        $PYTHON Maxfour $(whoami) | lolcat
        echo "Maxfour"
        #pause
   elif [ $ch = 175 ];then
        $PYTHON Merlin1 $(whoami) | lolcat
        echo "Merlin1"
        #pause
   elif [ $ch = 176 ];then
        $PYTHON Merlin2 $(whoami) | lolcat
        echo "Merlin2"
        #pause
   elif [ $ch = 177 ];then
        $PYTHON Mike $(whoami) | lolcat
        echo "Mike"
        #pause
   elif [ $ch = 178 ];then
        $PYTHON Mini $(whoami) | lolcat
        echo "Mini"
        #pause
   elif [ $ch = 179 ];then
        $PYTHON Mirror $(whoami) | lolcat
        echo "Mirror"
        #pause
   elif [ $ch = 180 ];then
        $PYTHON Mnemonic $(whoami) | lolcat
        echo "Mnemonic"
        #pause
   elif [ $ch = 181 ];then
        $PYTHON Modular $(whoami) | lolcat
        echo "Modular"
        #pause
   elif [ $ch = 182 ];then
        $PYTHON Morse $(whoami) | lolcat
        echo "Morse"
        #pause
   elif [ $ch = 183 ];then
        $PYTHON Morse2 $(whoami) | lolcat
        echo "Morse2"
        #pause
   elif [ $ch = 184 ];then
        $PYTHON Moscow $(whoami) | lolcat
        echo "Moscow"
        #pause
   elif [ $ch = 185 ];then
        $PYTHON Mshebrew210 $(whoami) | lolcat
        echo "Mshebrew210"
        #pause
   elif [ $ch = 186 ];then
        $PYTHON Muzzle $(whoami) | lolcat
        echo "Muzzle"
        #pause
   elif [ $ch = 187 ];then
        $PYTHON NScript $(whoami) | lolcat
        echo "NScript"
        #pause
   elif [ $ch = 188 ];then
        $PYTHON 'NT Greek' $(whoami) | lolcat
        echo "'NT Greek'"
        #pause
   elif [ $ch = 189 ];then
        $PYTHON 'NV Script' $(whoami) | lolcat
        echo "'NV Script'"
        #pause
   elif [ $ch = 190 ];then
        $PYTHON Nancyj-Fancy $(whoami) | lolcat
        echo "Nancyj-Fancy"
        #pause
   elif [ $ch = 191 ];then
        $PYTHON Nancyj-Improved $(whoami) | lolcat
        echo "Nancyj-Improved"
        #pause
   elif [ $ch = 192 ];then
        $PYTHON Nancyj-Underlined $(whoami) | lolcat
        echo "Nancyj-Underlined"
        #pause
   elif [ $ch = 193 ];then
        $PYTHON Nancyj $(whoami) | lolcat
        echo "Nancyj"
        #pause
   elif [ $ch = 194 ];then
        $PYTHON Nipples $(whoami) | lolcat
        echo "Nipples"
        #pause
   elif [ $ch = 195 ];then
        $PYTHON O8 $(whoami) | lolcat
        echo "O8"
        #pause
   elif [ $ch = 196 ];then
        $PYTHON OS2 $(whoami) | lolcat
        echo "OS2"
        #pause
   elif [ $ch = 197 ];then
        $PYTHON Octal $(whoami) | lolcat
        echo "Octal"
        #pause
   elif [ $ch = 198 ];then
        $PYTHON Ogre $(whoami) | lolcat
        echo "Ogre"
        #pause
   elif [ $ch = 199 ];then
        $PYTHON 'Old Banner' $(whoami) | lolcat
        echo "'Old Banner'"
        #pause
   elif [ $ch = 200 ];then
        $PYTHON "Patorjk's Cheese" $(whoami) | lolcat
        echo "'Patorjk's Cheese'"
        #pause
   elif [ $ch = 201 ];then
        $PYTHON Patorjk-HeX $(whoami) | lolcat
        echo "Patorjk-HeX"
        #pause
   elif [ $ch = 202 ];then
        $PYTHON Pawp $(whoami) | lolcat
        echo "Pawp"
        #pause
   elif [ $ch = 203 ];then
        $PYTHON 'Peaks Slant' $(whoami) | lolcat
        echo "'Peaks Slant'"
        #pause
   elif [ $ch = 204 ];then
        $PYTHON Peaks $(whoami) | lolcat
        echo "Peaks"
        #pause
   elif [ $ch = 205 ];then
        $PYTHON Pebbles $(whoami) | lolcat
        echo "Pebbles"
        #pause
   elif [ $ch = 206 ];then
        $PYTHON Pepper $(whoami) | lolcat
        echo "Pepper"
        #pause
   elif [ $ch = 207 ];then
        $PYTHON Poison $(whoami) | lolcat
        echo "Poison"
        #pause
   elif [ $ch = 208 ];then
        $PYTHON Puffy $(whoami) | lolcat
        echo "Puffy"
        #pause
   elif [ $ch = 209 ];then
        $PYTHON Puzzle $(whoami) | lolcat
        echo "Puzzle"
        #pause
   elif [ $ch = 210 ];then
        $PYTHON Pyramid $(whoami) | lolcat
        echo "Pyramid"
        #pause
   elif [ $ch = 211 ];then
        $PYTHON Rammstein $(whoami) | lolcat
        echo "Rammstein"
        #pause
   elif [ $ch = 212 ];then
        $PYTHON Rectangles $(whoami) | lolcat
        echo "Rectangles"
        #pause
   elif [ $ch = 213 ];then
        $PYTHON 'Red Phoenix' $(whoami) | lolcat
        echo "'Red Phoenix'"
        #pause
   elif [ $ch = 214 ];then
        $PYTHON Relief $(whoami) | lolcat
        echo "Relief"
        #pause
   elif [ $ch = 215 ];then
        $PYTHON Relief2 $(whoami) | lolcat
        echo "Relief2"
        #pause
   elif [ $ch = 216 ];then
        $PYTHON Reverse $(whoami) | lolcat
        echo "Reverse"
        #pause
   elif [ $ch = 217 ];then
        $PYTHON Roman $(whoami) | lolcat
        echo "Roman"
        #pause
   elif [ $ch = 218 ];then
        $PYTHON Rot13 $(whoami) | lolcat
        echo "Rot13"
        #pause
   elif [ $ch = 219 ];then
        $PYTHON Rotated $(whoami) | lolcat
        echo "Rotated"
        #pause
   elif [ $ch = 220 ];then
        $PYTHON Rounded $(whoami) | lolcat
        echo "Rounded"
        #pause
   elif [ $ch = 221 ];then
        $PYTHON 'Rowan Cap' $(whoami) | lolcat
        echo "'Rowan Cap'"
        #pause
   elif [ $ch = 222 ];then
        $PYTHON Rozzo $(whoami) | lolcat
        echo "Rozzo"
        #pause
   elif [ $ch = 223 ];then
        $PYTHON Runic $(whoami) | lolcat
        echo "Runic"
        #pause
   elif [ $ch = 224 ];then
        $PYTHON Runyc $(whoami) | lolcat
        echo "Runyc"
        #pause
   elif [ $ch = 225 ];then
        $PYTHON 'S Blood' $(whoami) | lolcat
        echo "'S Blood'"
        #pause
   elif [ $ch = 226 ];then
        $PYTHON 'SL Script' $(whoami) | lolcat
        echo "'SL Script'"
        #pause
   elif [ $ch = 227 ];then
        $PYTHON 'Santa Clara' $(whoami) | lolcat
        echo "'Santa Clara'"
        #pause
   elif [ $ch = 228 ];then
        $PYTHON Script $(whoami) | lolcat
        echo "Script"
        #pause
   elif [ $ch = 229 ];then
        $PYTHON Serifcap $(whoami) | lolcat
        echo "Serifcap"
        #pause
   elif [ $ch = 230 ];then
        $PYTHON Shadow $(whoami) | lolcat
        echo "Shadow"
        #pause
   elif [ $ch = 231 ];then
        $PYTHON Shimrod $(whoami) | lolcat
        echo "Shimrod"
        #pause
   elif [ $ch = 232 ];then
        $PYTHON Short $(whoami) | lolcat
        echo "Short"
        #pause
   elif [ $ch = 233 ];then
        $PYTHON 'Slant Relief' $(whoami) | lolcat
        echo "'Slant Relief'"
        #pause
   elif [ $ch = 234 ];then
        $PYTHON Slant $(whoami) | lolcat
        echo "Slant"
        #pause
   elif [ $ch = 235 ];then
        $PYTHON Slide $(whoami) | lolcat
        echo "Slide"
        #pause
   elif [ $ch = 236 ];then
        $PYTHON 'Small Caps' $(whoami) | lolcat
        echo "'Small Caps'"
        #pause
   elif [ $ch = 237 ];then
        $PYTHON 'Small Isometric1' $(whoami) | lolcat
        echo "'Small Isometric1'"
        #pause
   elif [ $ch = 238 ];then
        $PYTHON 'Small Keyboard' $(whoami) | lolcat
        echo "'Small Keyboard'"
        #pause
   elif [ $ch = 239 ];then
        $PYTHON 'Small Poison' $(whoami) | lolcat
        echo "'Small Poison'"
        #pause
   elif [ $ch = 240 ];then
        $PYTHON 'Small Script' $(whoami) | lolcat
        echo "'Small Script'"
        #pause
   elif [ $ch = 241 ];then
        $PYTHON 'Small Shadow' $(whoami) | lolcat
        echo "'Small Shadow'"
        #pause
   elif [ $ch = 242 ];then
        $PYTHON 'Small Slant' $(whoami) | lolcat
        echo "'Small Slant'"
        #pause
   elif [ $ch = 243 ];then
        $PYTHON 'Small Tengwar' $(whoami) | lolcat
        echo "'Small Tengwar'"
        #pause
   elif [ $ch = 244 ];then
        $PYTHON Small $(whoami) | lolcat
        echo "Small"
        #pause
   elif [ $ch = 245 ];then
        $PYTHON Soft $(whoami) | lolcat
        echo "Soft"
        #pause
   elif [ $ch = 246 ];then
        $PYTHON Speed $(whoami) | lolcat
        echo "Speed"
        #pause
   elif [ $ch = 247 ];then
        $PYTHON Spliff $(whoami) | lolcat
        echo "Spliff"
        #pause
   elif [ $ch = 248 ];then
        $PYTHON Stacey $(whoami) | lolcat
        echo "Stacey"
        #pause
   elif [ $ch = 249 ];then
        $PYTHON Stampate $(whoami) | lolcat
        echo "Stampate"
        #pause
   elif [ $ch = 250 ];then
        $PYTHON Stampatello $(whoami) | lolcat
        echo "Stampatello"
        #pause
   elif [ $ch = 251 ];then
        $PYTHON Standard $(whoami) | lolcat
        echo "Standard"
        #pause
   elif [ $ch = 252 ];then
        $PYTHON 'Star Strips' $(whoami) | lolcat
        echo "'Star Strips'"
        #pause
   elif [ $ch = 253 ];then
        $PYTHON 'Star Wars' $(whoami) | lolcat
        echo "'Star Wars'"
        #pause
   elif [ $ch = 254 ];then
        $PYTHON Stellar $(whoami) | lolcat
        echo "Stellar"
        #pause
   elif [ $ch = 255 ];then
        $PYTHON Stforek $(whoami) | lolcat
        echo "Stforek"
        #pause
   elif [ $ch = 256 ];then
        $PYTHON 'Stick Letters' $(whoami) | lolcat
        echo "'Stick Letters'"
        #pause
   elif [ $ch = 257 ];then
        $PYTHON Stop $(whoami) | lolcat
        echo "Stop"
        #pause
   elif [ $ch = 258 ];then
        $PYTHON Straight $(whoami) | lolcat
        echo "Straight"
        #pause
   elif [ $ch = 259 ];then
        $PYTHON 'Stronger Than All' $(whoami) | lolcat
        echo "'Stronger Than All'"
        #pause
   elif [ $ch = 260 ];then
        $PYTHON Sub-Zero $(whoami) | lolcat
        echo "Sub-Zero"
        #pause
   elif [ $ch = 261 ];then
        $PYTHON 'Swamp Land' $(whoami) | lolcat
        echo "'Swamp Land'"
        #pause
   elif [ $ch = 262 ];then
        $PYTHON Swan $(whoami) | lolcat
        echo "Swan"
        #pause
   elif [ $ch = 263 ];then
        $PYTHON Sweet $(whoami) | lolcat
        echo "Sweet"
        #pause
   elif [ $ch = 264 ];then
        $PYTHON THIS $(whoami) | lolcat
        echo "THIS"
        #pause
   elif [ $ch = 265 ];then
        $PYTHON Tanja $(whoami) | lolcat
        echo "Tanja"
        #pause
   elif [ $ch = 266 ];then
        $PYTHON Tengwar $(whoami) | lolcat
        echo "Tengwar"
        #pause
   elif [ $ch = 267 ];then
        $PYTHON Term $(whoami) | lolcat
        echo "Term"
        #pause
   elif [ $ch = 268 ];then
        $PYTHON Test1 $(whoami) | lolcat
        echo "Test1"
        #pause
   elif [ $ch = 269 ];then
        $PYTHON 'The Edge' $(whoami) | lolcat
        echo "'The Edge'"
        #pause
   elif [ $ch = 270 ];then
        $PYTHON Thick $(whoami) | lolcat
        echo "Thick"
        #pause
   elif [ $ch = 271 ];then
        $PYTHON Thin $(whoami) | lolcat
        echo "Thin"
        #pause
   elif [ $ch = 272 ];then
        $PYTHON Thorned $(whoami) | lolcat
        echo "Thorned"
        #pause
   elif [ $ch = 273 ];then
        $PYTHON 'Three Point' $(whoami) | lolcat
        echo "'Three Point'"
        #pause
   elif [ $ch = 274 ];then
        $PYTHON 'Ticks Slant' $(whoami) | lolcat
        echo "'Ticks Slant'"
        #pause
   elif [ $ch = 275 ];then
        $PYTHON Ticks $(whoami) | lolcat
        echo "Ticks"
        #pause
   elif [ $ch = 276 ];then
        $PYTHON Tiles $(whoami) | lolcat
        echo "Tiles"
        #pause
   elif [ $ch = 277 ];then
        $PYTHON Tinker-Toy $(whoami) | lolcat
        echo "Tinker-Toy"
        #pause
   elif [ $ch = 278 ];then
        $PYTHON Tombstone $(whoami) | lolcat
        echo "Tombstone"
        #pause
   elif [ $ch = 279 ];then
        $PYTHON Train $(whoami) | lolcat
        echo "Train"
        #pause
   elif [ $ch = 280 ];then
        $PYTHON Trek $(whoami) | lolcat
        echo "Trek"
        #pause
   elif [ $ch = 281 ];then
        $PYTHON Tsalagi $(whoami) | lolcat
        echo "Tsalagi"
        #pause
   elif [ $ch = 282 ];then
        $PYTHON Tubular $(whoami) | lolcat
        echo "Tubular"
        #pause
   elif [ $ch = 283 ];then
        $PYTHON Twisted $(whoami) | lolcat
        echo "Twisted"
        #pause
   elif [ $ch = 284 ];then
        $PYTHON 'Two Point' $(whoami) | lolcat
        echo "'Two Point'"
        #pause
   elif [ $ch = 285 ];then
        $PYTHON 'USA Flag' $(whoami) | lolcat
        echo "'USA Flag'"
        #pause
   elif [ $ch = 286 ];then
        $PYTHON Univers $(whoami) | lolcat
        echo "Univers"
        #pause
   elif [ $ch = 287 ];then
        $PYTHON Varsity $(whoami) | lolcat
        echo "Varsity"
        #pause
   elif [ $ch = 288 ];then
        $PYTHON Wavy $(whoami) | lolcat
        echo "Wavy"
        #pause
   elif [ $ch = 289 ];then
        $PYTHON Weird $(whoami) | lolcat
        echo "Weird"
        #pause
   elif [ $ch = 290 ];then
        $PYTHON 'Wet Letter' $(whoami) | lolcat
        echo "'Wet Letter'"
        #pause
   elif [ $ch = 291 ];then
        $PYTHON Whimsy $(whoami) | lolcat
        echo "Whimsy"
        #pause
   elif [ $ch = 292 ];then
        $PYTHON Wow $(whoami) | lolcat
        echo "Wow"
        #pause
   elif [ $ch = 293 ];then
        $PYTHON alligator3 $(whoami) | lolcat
        echo "alligator3"
        #pause
   elif [ $ch = 294 ];then
        $PYTHON amc3line $(whoami) | lolcat
        echo "amc3line"
        #pause
   elif [ $ch = 295 ];then
        $PYTHON amc3liv1 $(whoami) | lolcat
        echo "amc3liv1"
        #pause
   elif [ $ch = 296 ];then
        $PYTHON amcaaa01 $(whoami) | lolcat
        echo "amcaaa01"
        #pause
   elif [ $ch = 297 ];then
        $PYTHON amcneko $(whoami) | lolcat
        echo "amcneko"
        #pause
   elif [ $ch = 298 ];then
        $PYTHON amcrazo2 $(whoami) | lolcat
        echo "amcrazo2"
        #pause
   elif [ $ch = 299 ];then
        $PYTHON amcrazor $(whoami) | lolcat
        echo "amcrazor"
        #pause
   elif [ $ch = 300 ];then
        $PYTHON amcslash $(whoami) | lolcat
        echo "amcslash"
        #pause
   elif [ $ch = 301 ];then
        $PYTHON amcslder $(whoami) | lolcat
        echo "amcslder"
        #pause
   elif [ $ch = 302 ];then
        $PYTHON amcthin $(whoami) | lolcat
        echo "amcthin"
        #pause
   elif [ $ch = 303 ];then
        $PYTHON amctubes $(whoami) | lolcat
        echo "amctubes"
        #pause
   elif [ $ch = 304 ];then
        $PYTHON amcun1 $(whoami) | lolcat
        echo "amcun1"
        #pause
   elif [ $ch = 305 ];then
        $PYTHON ascii_new_roman $(whoami) | lolcat
        echo "ascii_new_roman"
        #pause
   elif [ $ch = 306 ];then
        $PYTHON banner $(whoami) | lolcat
        echo "banner"
        #pause
   elif [ $ch = 307 ];then
        $PYTHON big $(whoami) | lolcat
        echo "big"
        #pause
   elif [ $ch = 308 ];then
        $PYTHON bigchief $(whoami) | lolcat
        echo "bigchief"
        #pause
   elif [ $ch = 309 ];then
        $PYTHON block $(whoami) | lolcat
        echo "block"
        #pause
   elif [ $ch = 310 ];then
        $PYTHON broadway_kb $(whoami) | lolcat
        echo "broadway_kb"
        #pause
   elif [ $ch = 311 ];then
        $PYTHON bubble $(whoami) | lolcat
        echo "bubble"
        #pause
   elif [ $ch = 312 ];then
        $PYTHON calgphy2 $(whoami) | lolcat
        echo "calgphy2"
        #pause
   elif [ $ch = 313 ];then
        $PYTHON cosmic $(whoami) | lolcat
        echo "cosmic"
        #pause
   elif [ $ch = 314 ];then
        $PYTHON dancingfont $(whoami) | lolcat
        echo "dancingfont"
        #pause
   elif [ $ch = 315 ];then
        $PYTHON defleppard $(whoami) | lolcat
        echo "defleppard"
        #pause
   elif [ $ch = 316 ];then
        $PYTHON dietcola $(whoami) | lolcat
        echo "dietcola"
        #pause
   elif [ $ch = 317 ];then
        $PYTHON digital $(whoami) | lolcat
        echo "digital"
        #pause
   elif [ $ch = 318 ];then
        $PYTHON dosrebel $(whoami) | lolcat
        echo "dosrebel"
        #pause
   elif [ $ch = 319 ];then
        $PYTHON dotmatrix $(whoami) | lolcat
        echo "dotmatrix"
        #pause
   elif [ $ch = 320 ];then
        $PYTHON doubleshorts $(whoami) | lolcat
        echo "doubleshorts"
        #pause
   elif [ $ch = 321 ];then
        $PYTHON drpepper $(whoami) | lolcat
        echo "drpepper"
        #pause
   elif [ $ch = 322 ];then
        $PYTHON eftichess $(whoami) | lolcat
        echo "eftichess"
        #pause
   elif [ $ch = 323 ];then
        $PYTHON eftifont $(whoami) | lolcat
        echo "eftifont"
        #pause
   elif [ $ch = 324 ];then
        $PYTHON eftipiti $(whoami) | lolcat
        echo "eftipiti"
        #pause
   elif [ $ch = 325 ];then
        $PYTHON eftirobot $(whoami) | lolcat
        echo "eftirobot"
        #pause
   elif [ $ch = 326 ];then
        $PYTHON eftitalic $(whoami) | lolcat
        echo "eftitalic"
        #pause
   elif [ $ch = 327 ];then
        $PYTHON eftiwall $(whoami) | lolcat
        echo "eftiwall"
        #pause
   elif [ $ch = 328 ];then
        $PYTHON eftiwater $(whoami) | lolcat
        echo "eftiwater"
        #pause
   elif [ $ch = 329 ];then
        $PYTHON fire_font-k $(whoami) | lolcat
        echo "fire_font-k"
        #pause
   elif [ $ch = 330 ];then
        $PYTHON fire_font-s $(whoami) | lolcat
        echo "fire_font-s"
        #pause
   elif [ $ch = 331 ];then
        $PYTHON flowerpower $(whoami) | lolcat
        echo "flowerpower"
        #pause
   elif [ $ch = 332 ];then
        $PYTHON fourtops $(whoami) | lolcat
        echo "fourtops"
        #pause
   elif [ $ch = 333 ];then
        $PYTHON funface $(whoami) | lolcat
        echo "funface"
        #pause
   elif [ $ch = 334 ];then
        $PYTHON funfaces $(whoami) | lolcat
        echo "funfaces"
        #pause
   elif [ $ch = 335 ];then
        $PYTHON heart_left $(whoami) | lolcat
        echo "heart_left"
        #pause
   elif [ $ch = 336 ];then
        $PYTHON heart_right $(whoami) | lolcat
        echo "heart_right"
        #pause
   elif [ $ch = 337 ];then
        $PYTHON henry3d $(whoami) | lolcat
        echo "henry3d"
        #pause
   elif [ $ch = 338 ];then
        $PYTHON horizontalleft $(whoami) | lolcat
        echo "horizontalleft"
        #pause
   elif [ $ch = 339 ];then
        $PYTHON horizontalright $(whoami) | lolcat
        echo "horizontalright"
        #pause
   elif [ $ch = 340 ];then
        $PYTHON ivrit $(whoami) | lolcat
        echo "ivrit"
        #pause
   elif [ $ch = 341 ];then
        $PYTHON kontoslant $(whoami) | lolcat
        echo "kontoslant"
        #pause
   elif [ $ch = 342 ];then
        $PYTHON larry3d $(whoami) | lolcat
        echo "larry3d"
        #pause
   elif [ $ch = 343 ];then
        $PYTHON lean $(whoami) | lolcat
        echo "lean"
        #pause
   elif [ $ch = 344 ];then
        $PYTHON lildevil $(whoami) | lolcat
        echo "lildevil"
        #pause
   elif [ $ch = 345 ];then
        $PYTHON lineblocks $(whoami) | lolcat
        echo "lineblocks"
        #pause
   elif [ $ch = 346 ];then
        $PYTHON maxiwi $(whoami) | lolcat
        echo "maxiwi"
        #pause
   elif [ $ch = 347 ];then
        $PYTHON mini $(whoami) | lolcat
        echo "mini"
        #pause
   elif [ $ch = 348 ];then
        $PYTHON miniwi $(whoami) | lolcat
        echo "miniwi"
        #pause
   elif [ $ch = 349 ];then
        $PYTHON mnemonic $(whoami) | lolcat
        echo "mnemonic"
        #pause
   elif [ $ch = 350 ];then
        $PYTHON ntgreek $(whoami) | lolcat
        echo "ntgreek"
        #pause
   elif [ $ch = 351 ];then
        $PYTHON oldbanner $(whoami) | lolcat
        echo "oldbanner"
        #pause
   elif [ $ch = 352 ];then
        $PYTHON peaksslant $(whoami) | lolcat
        echo "peaksslant"
        #pause
   elif [ $ch = 353 ];then
        $PYTHON red_phoenix $(whoami) | lolcat
        echo "red_phoenix"
        #pause
   elif [ $ch = 354 ];then
        $PYTHON rev $(whoami) | lolcat
        echo "rev"
        #pause
   elif [ $ch = 355 ];then
        $PYTHON rowancap $(whoami) | lolcat
        echo "rowancap"
        #pause
   elif [ $ch = 356 ];then
        $PYTHON s-relief $(whoami) | lolcat
        echo "s-relief"
        #pause
   elif [ $ch = 357 ];then
        $PYTHON santaclara $(whoami) | lolcat
        echo "santaclara"
        #pause
   elif [ $ch = 358 ];then
        $PYTHON sblood $(whoami) | lolcat
        echo "sblood"
        #pause
   elif [ $ch = 359 ];then
        $PYTHON script $(whoami) | lolcat
        echo "script"
        #pause
   elif [ $ch = 360 ];then
        $PYTHON shadow $(whoami) | lolcat
        echo "shadow"
        #pause
   elif [ $ch = 361 ];then
        $PYTHON slant $(whoami) | lolcat
        echo "slant"
        #pause
   elif [ $ch = 362 ];then
        $PYTHON slscript $(whoami) | lolcat
        echo "slscript"
        #pause
   elif [ $ch = 363 ];then
        $PYTHON small $(whoami) | lolcat
        echo "small"
        #pause
   elif [ $ch = 364 ];then
        $PYTHON smallcaps $(whoami) | lolcat
        echo "smallcaps"
        #pause
   elif [ $ch = 365 ];then
        $PYTHON smisome1 $(whoami) | lolcat
        echo "smisome1"
        #pause
   elif [ $ch = 366 ];then
        $PYTHON smkeyboard $(whoami) | lolcat
        echo "smkeyboard"
        #pause
   elif [ $ch = 367 ];then
        $PYTHON smpoison $(whoami) | lolcat
        echo "smpoison"
        #pause
   elif [ $ch = 368 ];then
        $PYTHON smscript $(whoami) | lolcat
        echo "smscript"
        #pause
   elif [ $ch = 369 ];then
        $PYTHON smshadow $(whoami) | lolcat
        echo "smshadow"
        #pause
   elif [ $ch = 370 ];then
        $PYTHON smslant $(whoami) | lolcat
        echo "smslant"
        #pause
   elif [ $ch = 371 ];then
        $PYTHON smtengwar $(whoami) | lolcat
        echo "smtengwar"
        #pause
   elif [ $ch = 372 ];then
        $PYTHON standard $(whoami) | lolcat
        echo "standard"
        #pause
   elif [ $ch = 373 ];then
        $PYTHON starstrips $(whoami) | lolcat
        echo "starstrips"
        #pause
   elif [ $ch = 374 ];then
        $PYTHON starwars $(whoami) | lolcat
        echo "starwars"
        #pause
   elif [ $ch = 375 ];then
        $PYTHON swampland $(whoami) | lolcat
        echo "swampland"
        #pause
   elif [ $ch = 376 ];then
        $PYTHON term $(whoami) | lolcat
        echo "term"
        #pause
   elif [ $ch = 377 ];then
        $PYTHON threepoint $(whoami) | lolcat
        echo "threepoint"
        #pause
   elif [ $ch = 378 ];then
        $PYTHON ticksslant $(whoami) | lolcat
        echo "ticksslant"
        #pause
   elif [ $ch = 379 ];then
        $PYTHON twopoint $(whoami) | lolcat
        echo "twopoint"
        #pause
   elif [ $ch = 380 ];then
        $PYTHON usaflag $(whoami) | lolcat
        echo "usaflag"
        #pause
   elif [ $ch = 381 ];then
        $PYTHON wetletter $(whoami) | lolcat
        echo "wetletter"
        #pause


    elif [ "$ch" = "$(whoami)" ];then
        exit
    else
        echo -e "\e[5;31m \e[4;31m \e[1;31m \e[3;31m Invalid Input !!! \e[0m"
        #pause
    fi
done
