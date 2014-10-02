# Setting up a Fresh Install

To get the dotfiles and apply the subset of configuration steps that it was possible to automate, run one of the included scripts:

  * If you have root on the machine: `bash ./setup_osx.sh`
  * If you don't have root on the machine: `bash ./setup_osx_nosudo.sh`
  * If you just want to copy the dotfiles: `bash ./dotfiles_setup.sh`

Then proceed to download and install those things that require interactive installation.

## Regular Maintenance

New versions of vim plugins in submodules can be obtained with `git submodule foreach git pull origin master`

Keep Homebrew-managed applications up to date with `brew update && brew upgrade` (`brew update && brew outdated` to list)

Keep Python packages up to date with `pip install -U`

## App Store & Downloadable DMGs

  - Install [XCode from the App Store](https://developer.apple.com/xcode/downloads/)
  - Install [The Unarchiver from the App Store](https://itunes.apple.com/app/the-unarchiver/id425424353)
  - Set preferences to allow unknown apps: *System Preferences -> Security & Privacy -> General -> Allow apps downloaded from anywhere*
  - Install [CyberDuck](http://cyberduck.ch)
  - Install Microsoft Office (if available from institution)
  - Install [Skim](http://skim-app.sourceforge.net)
  - Install [BasicTeX](https://tug.org/mactex/morepackages.html)
  - Install [VLC](http://videolan.org)
  - Install [AppZapper](http://appzapper.com) (don't allow contacts)
  - Install [f.lux](http://justgetflux.com) 
  - Install [Ureka](http://ssb.stsci.edu/ureka/) (maybe do this after the Homebrew stuff below...)
  - Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
  - Install [Vagrant](http://www.vagrantup.com/downloads.html)

## Homebrew Apps

  - Install Homebrew
```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
  - Install Python 2.7, Python 3 from Homebrew (`brew install python python3`) and update setuptools
```bash
pip install --upgrade setuptools
pip install --upgrade pip
pip3 install --upgrade setuptools
pip3 install --upgrade pip
```
  - Install Git (`brew install git`)
  - Install mosh (`brew install mobile-shell`)
  - Install FreeType (`brew install freetype`)
  - Install ZeroMQ (`brew install zeromq`)
  - Install `bash_completion` (`brew install bash_completion`)

## Python Packages

Ansible needs special treatment: `sudo pip install ansible`.

For everything else, `pip install -Ur systemwide_requirements.txt`. That will:

  - Install NumPy from pip (`pip install numpy`)
  - Install virtualenv and virtualenvwrapper from pip (`pip install virtualenv virtualenvwrapper`)
  - Install PyZMQ from pip (`pip install pyzmq`)
  - Install matplotlib from pip (`pip install matplotlib`)
  - Install SciPy from pip (`pip install scipy`)
  - Install Tornado from pip (`pip install tornado`)
  - Install IPython from pip (`pip install ipython`)
