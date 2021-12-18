#!/bin/bash

renameFun(){
    current_path=$(pwd)
#    echo $(pwd)
    echo $1

    cd $1
    for f in *.SCL.lombok; do
        mv -- "$f" "${f%.SCL.lombok}.class"
    done

    cd $current_path
}

re2(){
  current_path=$(pwd)

  for file in `ls $1`
  do
    if [ -d $1"/"$file ]
    then
      renameFun $1"/"$file
      re2 $1"/"$file

    fi
  done

}


re2 $(pwd)/target/classes/unpack/lombok