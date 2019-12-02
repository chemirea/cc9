FROM ubuntu:18.04

# リポジトリを日本に
RUN sed -i.bak -e "s/http:\/\/archive\.ubuntu\.com/http:\/\/jp\.archive\.ubuntu\.com/g" /etc/apt/sources.list

# aptの初期化
RUN apt update -y && apt upgrade -y

RUN apt install -y --fix-missing gcc make git binutils libc6-dev
