#!/bin/bash

wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u171-b11/512cd62ec5174c3487ac17c61aaa89e8/jdk-8u171-linux-arm32-vfp-hflt.tar.gz"
sudo mkdir /usr/lib/java
sudo mv jdk-8u171-linux-arm32-vfp-hflt.tar.gz /usr/lib/java
cd /usr/lib/java
sudo tar -zxvf jdk-8u171-linux-arm32-vfp-hflt.tar.gz

# Update alternatives
cd jdk1.8.0_171
sudo update-alternatives --install /usr/bin/java java /usr/lib/java/jdk1.8.0_171/bin/java 100
sudo update-alternatives --config java
sudo update-alternatives --install /usr/bin/javac javac /usr/lib/java/jdk1.8.0_171/bin/javac 100
sudo update-alternatives --config javac
sudo update-alternatives --install /usr/bin/jar jar /usr/lib/java/jdk1.8.0_171/bin/jar 100
sudo update-alternatives --config jar

# Paths to adjust manually inside shell profile
# export JAVA_HOME=/usr/lib/java/jdk1.8.0_171/
# export JRE_HOME=/usr/lib/java/jdk1.8.0_171/jre
# export PATH=$PATH:/usr/lib/java/jdk1.8.0_171/bin:/usr/lib/java/jdk1.8.0_171/jre/bin
