#!/bin/bash 
# Program
#	This program config onu products type
# Version V1.0
# Author zhuxiaohui
#History
#2013/10/8 First release
products=PRODUCTS_GT811G
cd ../../
SWHOME=$(pwd)
export SWHOME
echo -e "#define PRODUCTS	$products \n" > products_config.h
make
echo -e "\n now product is $products \n"
