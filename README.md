# Setting up a Fresh Install

To get the dotfiles and apply the subset of configuration steps that it was possible to automate, run one of the included scripts:

  * If you have root on the machine: `bash ./setup_osx.sh`
  * If you don't have root on the machine: `bash ./setup_osx_nosudo.sh`
  * If you just want to copy the dotfiles: `bash ./dotfiles_setup.sh`

Then proceed to download and install those things that require interactive installation.

## Regular Maintenance

New versions of vim plugins in submodules can be obtained with `git submodule foreach git pull origin master`

Keep Homebrew-managed applications up to date with `brew update && brew upgrade` (`brew update && brew outdated` to list)

Keep Python packages up to date with `pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U`

On point releases of Python, it may be necessary to reinstall a bunch of stuff (e.g. IPython and Jupyter). To re-enable the Python 2.7 kernel:

    python2 -m pip install ipykernel
    python2 -m ipykernel install --user

## App Store & Downloadable DMGs

  - Install [1Password](http://1password.com/)
  - Install [XCode from the App Store](https://developer.apple.com/xcode/downloads/)
  - Install [Slate](https://github.com/jigish/slate)
  - Install [The Unarchiver from the App Store](https://itunes.apple.com/app/the-unarchiver/id425424353)
  - Set preferences to allow unknown apps: *System Preferences -> Security & Privacy -> General -> Allow apps downloaded from anywhere*
  - Install [Skim](http://skim-app.sourceforge.net)
  - Install [BasicTeX](https://tug.org/mactex/morepackages.html)
  - Install [VLC](http://videolan.org)
  - Install [AppZapper](http://appzapper.com) (don't allow contacts)
  - Install [f.lux](http://justgetflux.com) 
  - Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
  - Install [iTerm 2](http://iterm2.com/downloads.html)
  - Install [Adblock Plus](https://adblockplus.org) Safari Extension

## Homebrew / Python Apps

  - Install Homebrew

        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

  - Use casks:

        brew tap caskroom/cask

  - Install Python 2.7, Python 3 from Homebrew (`brew install python python3`) and update setuptools

        pip install --upgrade pip setuptools
        pip3 install --upgrade pip setuptools wheel

  - Install Git (`brew install git`)
  - Install mosh (`brew install mobile-shell`)
  - Install FreeType (`brew install freetype`)
  - Install ZeroMQ (`brew install zeromq`)
  - Install `bash_completion` (`brew install bash-completion`)
  - Install some useful Python packages:

        pip install -Ur ~/dotfiles/systemwide_requirements.txt
        pip3 install -Ur ~/dotfiles/systemwide_requirements.txt
