#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SOURCE_DIR="$QUICK_COCOS2DX_ROOT/framework"
CONFIG_PATH="$QUICK_COCOS2DX_ROOT/docs/apidoc_config.json"
TEMP_DIR="$DIR/tmp"
DOC_DIR="$DIR/api"
QUICK_DOC_DIR="$QUICK_COCOS2DX_ROOT/docs/api"

if [ -d "$TEMP_DIR" ]; then
    rm -r "$TEMP_DIR"
fi

if [ -f "$DOC_DIR/*" ]; then
    rm "$DOC_DIR/*"
fi

if [ -f "$QUICK_DOC_DIR/*" ]; then
    rm "$QUICK_DOC_DIR/*"
fi

php "$LUADOCX" extract -c "$CONFIG_PATH" "$SOURCE_DIR" "$TEMP_DIR"
php "$LUADOCX" generate -c "$CONFIG_PATH" "$TEMP_DIR" "$DOC_DIR"

cd "$DIR"
git add api
git commit -m "update apidoc"

cp "$DOC_DIR/"* "$QUICK_DOC_DIR"

