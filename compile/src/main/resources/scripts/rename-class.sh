#!/bin/bash

renameFun(){
    current_path=$(pwd)
#    echo $(pwd)
    echo $1

    cd $1
    for f in *.class; do
        mv -- "$f" "${f%.class}.SCL.lombok"
    done

    cd $current_path
}


renameFun $(pwd)/target/classes/lombok/javac/handlers