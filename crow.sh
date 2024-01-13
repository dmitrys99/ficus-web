#!/bin/bash

SCRIPT_DIR=`dirname "$0"`
SCRIPT_DIR=`( cd "$SCRIPT_DIR" && pwd )`

CROW_PATH=$SCRIPT_DIR/Crow/include/

echo $CROW_PATH
echo $OSTYPE
case $OSTYPE in
linux*)
    # /usr/include для Boost::ASIO
    ficus -app -verbose -cflags "-I$CROW_PATH -I/usr/include" crow.fx
    ;;
darwin*)
    # /opt/local/include для Boost::ASIO
    ficus -app -verbose -cflags "-I$CROW_PATH -I/opt/local/include" crow.fx
    ;;
esac