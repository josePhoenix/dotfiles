#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for dotfile in ".bash_profile" ".gitconfig" ".inputrc" ".profile" ".vim" ".vimrc"; do
    # if it doesn't exist, or exists but is a symlink...
    if ! [ -e "$HOME/$dotfile" ] || [ -h "$HOME/$dotfile" ]; then
        rm -f "$HOME/$dotfile"
        ln -vs "$DIR/$dotfile" "$HOME/$dotfile"
    fi
done

mkdir -p "$HOME/.git-template/"
for git_template_dir in "/usr/share/git-core/templates" "/usr/local/share/git-core/templates"; do
    if [ -d "$git_template_dir/" ]; then
        cp -Rv "$git_template_dir/" "$HOME/.git-template/"
        cp -Rv "$DIR/git-template-overlay/"* "$HOME/.git-template/"
    fi
done

echo -n "Fetching and/or updating git submodules..."
git submodule init && git submodule update && echo " Done!"
