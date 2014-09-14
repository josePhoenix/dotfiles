#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for dotfile in ".bash_profile" ".gitconfig" ".inputrc" ".profile" ".vim" ".vimrc"; do
    # if it doesn't exist, or exists but is a symlink...
    if ! [ -e $HOME/$dotfile ] || [ -h $HOME/$dotfile ]; then
        rm -f $HOME/$dotfile
        ln -vs $DIR/$dotfile $HOME/$dotfile
    fi
done

echo -n "Fetching and/or updating git submodules..."
git submodule init && git submodule update && echo " Done!"
