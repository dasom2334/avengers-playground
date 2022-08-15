FROM ubuntu
# ADD *.asm ./

RUN apt-get update -y && apt-get install build-essential gdb nasm -y
ENTRYPOINT ["/bin/bash"]