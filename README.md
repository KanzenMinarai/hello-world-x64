# Hello World

### Description
Just a very simple software to test out how the Netwide Assembler works, and how does intel implements
their version of assembly language to the most recent x64 processors, the code was tested on linux.

### Dependencies
```bash
# apt
sudo apt install nasm lld

# pacman
sudo pacman install nasm lld
```

### Install
```bash
# clone the repository
git clone --verbose https://github.com/KanzenMinarai/hello-world-x64.git

# change to directory
cd hello-world-x64/

# adding the executable permission mode
chmod +x setup.sh

# assembling and linking
./setup.sh install

# execute the binary
./hello
```

### Uninstall
```bash
# remove both hello.o and hello
./setup.sh uninstall
```
