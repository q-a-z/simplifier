#!/bin/bash
#created by YaSsInE
#run as root only
if [ $(id -u) -ne 0 ]; then
        echo "This script must be ran as root"
        exit 1
fi

trap ctrl_c INT
function ctrl_c() {
    printf "${RED}[-] Canceled by user \n"
    exit
}
RED='\033[0;31m'
GREEN='\033[0;32m'
printf "${RED}[+] Installing required tools , please wait ... \n${GREEN}"
apt update #update system
apt upgrade -y #upgrade tools
apt upgrade --fix-missing -y
apt install php -y
apt install git -y
apt install python-pip python3-pip -y
apt install gem -y
apt install ruby -y
apt install g++ -y
apt install ruby-dev -y
apt install golang-go -y
apt install curl -y
apt install python -y
apt install python3-pip -y
apt install python3 -y
curl https://bootstrap.pypa.io/2.7/get-pip.py --output get-pip.py
python get-pip.py
rm get-pip.py
