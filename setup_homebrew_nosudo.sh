#!/bin/bash

if ! [ -d "$HOME/homebrew" ]; then
  git clone https://github.com/Homebrew/homebrew.git "$HOME/homebrew"
  ln -s "$HOME/homebrew/bin/brew" "$HOME/bin/brew"
else
  echo "Homebrew directory already exists."
fi

mkdir -p "$HOME/"{etc,opt,include,lib,share/man/man1,man,Frameworks,homebrew}
ln -s "$HOME/homebrew/share/man/man1/brew.1" "$HOME/share/man/man1/brew.1"
chflags hidden "$HOME/"{etc,opt,include,lib,share,man,Frameworks,homebrew}

echo "brew installed at $(which brew)"