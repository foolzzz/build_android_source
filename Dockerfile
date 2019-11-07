

FROM ubuntu:16.04

RUN apt update -y \
    && apt install -y software-properties-common \
    && dpkg --add-architecture i386

RUN apt install -y libc6-dev-i386
# RUN apt install -y libx11-dev:i386 libncurses5-dev:i386 zlib1g-dev:i386 libreadline6-dev:i386

RUN apt update -y \
    && apt install vim git -y \
    && add-apt-repository -y ppa:openjdk-r/ppa  \
    && apt update -y \
    && apt install -y openjdk-7-jdk \
    && apt install -y openjdk-8-jdk \
    && apt install -y libgl1-mesa-dev g++-multilib  \
    && apt install -y git flex bison gperf build-essential \
    && apt install -y tofrodos python-markdown libxml2-utils xsltproc \
    && apt install -y dpkg-dev libsdl1.2-dev libesd0-dev \
    && apt install -y git-core gnupg flex bison gperf build-essential   \
    && apt install -y zip curl zlib1g-dev gcc-multilib g++-multilib  \
    && apt install -y lib32ncurses5-dev x11proto-core-dev libx11-dev  \
    && apt install -y libgl1-mesa-dev libxml2-utils xsltproc unzip m4 \
    && apt install -y lib32z-dev ccache \
    && echo "Good Job!"
