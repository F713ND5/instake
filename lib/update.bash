#!/usr/bin/env bash

update() {
    local dir=$(echo "$(pwd)/..")
    echo -e "${GREEN}[-] ${CYAN}Cloning repository ...${YELLOW}"
    git clone https://github.com/wayangcode/instake.git "${pwd}/instake"
    echo -e "${GREEN}[-] ${CYAN}Instake updated\n"
    echo -ne "${Y1}[c]${CYAN}ontinue/${P1}[e]${CYAN}xit : "
    read option
    case $option in
        c)
            bash ${0}
            ;;
        e)
            echo -ne "${N}"
            exit 0
            ;;
        *)
            echo -ne "${N}"
            exit 0
            ;;
    esac
}

update