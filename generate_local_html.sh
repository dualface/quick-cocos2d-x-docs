#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SOURCE_DIR="$QUICK_COCOS2DX_ROOT/framework"
CONFIG_PATH="$QUICK_COCOS2DX_ROOT/docs/apidoc_config.json"
TEMP_DIR="$DIR/tmp/"
DOC_DIR="$QUICK_COCOS2DX_ROOT/docs/api/"

if [ -d "$TEMP_DIR" ]; then
    rm -r "$TEMP_DIR"
fi

php "$LUADOCX" extract -c "$CONFIG_PATH" "$SOURCE_DIR" "$TEMP_DIR"
php "$LUADOCX" generate -c "$CONFIG_PATH" "$TEMP_DIR" "$DOC_DIR"
