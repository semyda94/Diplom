#!/bin/bash

if [ ! -f config.mk ] 
then 
    echo Not found file
    echo Need execute 'make config'
    exit 1;
fi

exit 0