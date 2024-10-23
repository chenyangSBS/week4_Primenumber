#!/bin/bash

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

SRC_DIR="./src/main/java"
PACKAGE="org/example"
CLASS_NAME="PrimenumberSum"
CLASS_PATH="$SRC_DIR/$PACKAGE/$CLASS_NAME.java"
if [ -f "$CLASS_PATH" ]; then
    javac -d "$SRC_DIR" "$CLASS_PATH"
    if [ $? -eq 0 ]; then
        # 使用 "$@" 来传递所有命令行参数给 Java 程序
        # 使用命令替换捕获 Java 程序的输出
        OUTPUT=$( java -cp "$SRC_DIR" $PACKAGE.$CLASS_NAME "$@" )
        echo "$OUTPUT"
    else
        echo "编译失败，请检查Java代码。"
    fi
else
    echo "Java文件不存在，请确保文件名和路径正确。"
fi
