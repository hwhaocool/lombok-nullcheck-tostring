# lombok-nullcheck-tostring

## English
copy code from [lombok](https://github.com/projectlombok/lombok) with tag `1.18.22`

then modify [HandleToString](compile/src/main/java/lombok/javac/handlers/HandleToString.java)

and package the classes to a new jar `lombok-nullcheck-tostring-1.18.22.jar`


## 中文
修改思路  

脚本还在完善中，目前第五步是手动的，其它几步都是可以通过命令行操作

1. dependeny:unpack 解压到 target/unpack 文件夹
2. copy-rename:copy  从 target/unpack 拷贝相关的文件到 cls，并做相应的改名操作 classes
3. jar:jar 把解压的 classes 打包到 jar 里面
4. 真正的编译，输出为 class
5. 把class 设置到 jar 里面