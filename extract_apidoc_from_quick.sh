#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SOURCE_DIR="$QUICK_COCOS2DX_ROOT/framework"
CONFIG_PATH="$QUICK_COCOS2DX_ROOT/doc/apidoc_config.json"
TEMP_DIR="$DIR/tmp/"

if [ ! -d $TEMP_DIR ]; then
    mkdir -p $TEMP_DIR
fi

if [ -f $TEMP_DIR/* ]; then
    rm -fr $TEMP_DIR/*
fi

php "$LUADOCX" extract -c "$CONFIG_PATH" "$SOURCE_DIR" "$TEMP_DIR"
