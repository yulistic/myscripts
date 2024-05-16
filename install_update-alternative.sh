#!/bin/bash

usage(){
    echo "$(basename $0) [-i <version>]"
}

while getopts 'i:h' c
do
    case $c in
	i)
		sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-${OPTARG} 10
		sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-${OPTARG} 10
		exit
		;;

	h)
		usage
		exit
		;;
    esac
done

sudo update-alternatives --config gcc
sudo update-alternatives --config g++
