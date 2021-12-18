#!/bin/bash

# compile phase
cd compile
echo "unpack lombok"
mvn dependeny:unpack

cd ..
echo "reanme *.SCL.lombok to *.class"
sh ./src/main/resources/scripts/rename-class.sh

echo "assembly a temp jar for compile"
mvn jar:jar

echo "generate class"
mvn compile

echo "backup classes"
mvn copy-rename:copy

echo "assembly new jar"

mvn clean
mvn dependeny:unpack




mvn clean package
