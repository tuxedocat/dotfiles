#!/bin/bash -xe
dotdir=$(realpath $(dirname $0))
(
  cd $HOME &&\
  echo "In: $PWD" &&\
  ln -sf $(realpath $dotdir)/vimrc .vimrc &&\
  cd $HOME/.vim &&\
  echo "In: $HOME/.vim" &&\
  for f in $(find $dotdir/vim -name "*.vim"); do ln -sf $f $(basename $f); done
)
