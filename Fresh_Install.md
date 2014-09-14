# Setting up a Fresh Install

To get the dotfiles and apply the subset of configuration steps that it was possible to automate, run one of the included scripts:

  * If you have root on the machine: `bash ./setup_osx.sh`
  * If you don't have root on the machine: `bash ./setup_osx_nosudo.sh`
  * If you just want to copy the dotfiles: `bash ./dotfiles_setup.sh`

Then proceed to download and install those things that require interactive installation.

## App Store & Downloadable DMGs

Install XCode from App Store

Install The Unarchiver from App Store
    https://itunes.apple.com/app/the-unarchiver/id425424353?mt=12&ls=1

Set preferences to allow unknown apps: System Preferences -> Security & Privacy -> General -> Allow apps downloaded from anywhere

Install CyberDuck http://cyberduck.ch

Install Microsoft Office (if available from institution)

Install Skim http://skim-app.sourceforge.net

Install BasicTeX https://tug.org/mactex/morepackages.html

Install VLC http://videolan.org

Install AppZapper  (http://appzapper.com, don't allow contacts)

Install f.lux http://justgetflux.com

Install Ureka http://ssb.stsci.edu/ureka/ (maybe do this after the homebrew stuff below...)

## Terminal Apps

Install Homebrew

    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

Install Python 3 (brew install python3)

    echo "alias python=\"python3\"" >> ~/.profile
    echo "alias pip=\"pip3\"" >> ~/.profile
    pip install --upgrade setuptools
    pip install --upgrade pip

Install Git (brew install git)

    echo "source /usr/local/etc/bash_completion.d/*" >> ~/.bash_profile # already included

Install mosh (brew install mosh)

Install FreeType (brew install freetype)

Install NumPy (pip install numpy)

Install virtualenv, virtualenvwrapper (pip install virtualenv virtualenvwrapper)

Install ZeroMQ (brew install zeromq)

Install PyZMQ (pip install pyzmq)

Install matplotlib (pip install matplotlib)

# Maintenance

pip install -U

brew update && brew upgrade
