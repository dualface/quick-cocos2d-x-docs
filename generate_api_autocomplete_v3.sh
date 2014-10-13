#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SOURCE_DIR="$QUICK_V3_ROOT/quick/framework"
CONFIG_PATH="$QUICK_V3_ROOT/docs/res/apidoc_config.json"
TEMP_DIR="$DIR/tmp"
DOC_DIR="$DIR/api_v3"
CODEIDE_DIR="$DIR/codeide_v3"
QUICK_DOC_DIR="$QUICK_V3_ROOT/docs/api"

if [ -d "$TEMP_DIR" ]; then
    rm -r "$TEMP_DIR"
fi

files=("$DOC_DIR/*")
if [ ${#files[@]} -gt 0 ]; then
    rm -f "$DOC_DIR/"*
fi

files=("$QUICK_DOC_DIR/*")
if [ ${#files[@]} -gt 0 ]; then
    rm -f "$QUICK_DOC_DIR/*"
fi

php "$LUADOCX" extract -c "$CONFIG_PATH" "$SOURCE_DIR" "$TEMP_DIR"
# php "$LUADOCX" generate -c "$CONFIG_PATH" -t localhtml "$TEMP_DIR" "$DOC_DIR"
php "$LUADOCX" generate -c "$CONFIG_PATH" -t codeide "$TEMP_DIR" "$CODEIDE_DIR"

# cd "$DIR"
# git add api
# git commit -m "update apidoc"

# cp "$DOC_DIR/"* "$QUICK_DOC_DIR"

