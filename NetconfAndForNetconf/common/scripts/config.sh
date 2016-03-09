#!bin/bash

touch config.mk

echo "LIBS_DIR    = $(PWD)/../common/libs" > config.mk
echo "INCLUDE_DIR = $(PWD)/../common/include" >> config.mk


if [ "$1" = "sim" ] 
then
    echo "BOARD_NAME  = sim" >> config.mk
fi

if [ "$1" = "mips" ] 
then
echo "BOARD_NAME  = sim" >> config.mk
fi