#!/bin/bash

if ! [ -d "$HOME/homebrew" ]; then
  git clone https://github.com/Homebrew/homebrew.git "$HOME/homebrew"
  ln -s "$HOME/homebrew/bin/brew" "$HOME/bin/brew"
else
  echo "Homebrew directory already exists."
fi

mkdir -p "$HOME/"{etc,opt,include,lib,share,homebrew}
chflags hidden "$HOME/"{etc,opt,include,lib,share,homebrew}

echo "brew installed at $(which brew)"