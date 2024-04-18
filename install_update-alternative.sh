#!/bin/bash

usage(){
    echo "$(basename $0) <version>"
}

while getopts 'h' c
do
    case $c in
	h) usage
	    exit
	    ;;
    esac
done

if [ -z $1 ]; then
    usage
    exit
fi


sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-$1 10
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-$1 10
