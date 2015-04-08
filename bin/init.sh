#!/bin/bash

ROOT_DIR="$(readlink -f $(dirname $0)/..)"

rm -rf ~/.xinitrc ~/.Xdefaults
ln -s "${ROOT_DIR}/xinitrc" ~/.xinitrc
ln -s "${ROOT_DIR}/Xdefaults" ~/.Xdefaults
