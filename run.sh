#!/bin/bash

comfile () {
    nasm -f elf64 $1.asm -o ./$1.o
    ld -o ./comfile/$1 ./$1.o
}
run () {
    ./comfile/$1
}
files=./*.asm
for file in $files
do
    filename=${file%.*}
    echo -e "$filename:"
    comfile $filename
    chmod u+x ./comfile/*
    run $filename
    echo -e "\n"
done