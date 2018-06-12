# My Config

Contains my personal configuration files used on macOS and linux

## macOS Setup

## Linux Setup
Setup standard packages and build environment:
```
sudo apt update;
sudo apt upgrade;
sudo apt install -y libssl-dev zlib1g-dev git-core net-tools build-essential vim htop
```



Additional packages for arm cross-compilation:
```
sudo apt install -y libc6-armel-cross libc6-dev-armel-cross binutils-arm-linux-gnueabi libncurses5-dev device-tree-compiler lzma lzop
```
Depending on the target platform, install the specific compiler (example below for armhf):
```
sudo apt install -y gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf
```

## Configure git
After having set up the environment, set git username and email to change the default ones contained in .gitconfig
```
git config --global user.name "Your Name"
git config --global user.email "your_email@example.com"
```
