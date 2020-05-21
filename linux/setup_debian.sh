#!/bin/bash -x
export DEBIAN_FRONTEND=noninteractive

sudo apt-get update && \
sudo apt install -y build-essential curl llvm \
  ca-certificates locales tzdata \
  libssl-dev zlib1g-dev libbz2-dev \
  libreadline-dev libedit-dev libsqlite3-dev libncurses5-dev libncursesw5-dev \
  xz-utils tk-dev libffi-dev liblzma-dev python-openssl \
  wget git tig tmux vim-nox \
  python3-dev \
  ffmpeg dvipng \
  && \
sudo apt-get clean

sudo ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && locale-gen
