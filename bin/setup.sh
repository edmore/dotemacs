#! /bin/bash

##########################################################
# Description - Setup emacs configuration
# Author - www.edmoremoyo.com
##########################################################

BACKUP_DIR=$HOME/.emacs.d_backup
DATE=$(date +"%Y%m%d%H%M")

if [ -e $HOME/.emacs -o -d $HOME/.emacs.d/ ]; then
    echo "Creating backup directory ..."
    sudo mkdir -p $BACKUP_DIR

    if [ -e $HOME/.emacs ]; then
        echo "Backing up .emacs file ..."
        sudo mv $HOME/.emacs $BACKUP_DIR/.emacs_$DATE
    fi

    if [ -d $HOME/.emacs.d/ ]; then
        echo "Backing up .emacs.d folder ..."
        sudo mv $HOME/.emacs.d/ $BACKUP_DIR/.emacs.d_$DATE/
    fi
fi

# Setup aspell for spellchecking
echo "Installing aspell ..."
cd vendor/
curl ftp://ftp.gnu.org/gnu/aspell/aspell-0.60.6.tar.gz | tar xz &&\
cd aspell-0.60.6 && ./configure && make && sudo make install
cd .. # back to vendor directory ..
curl ftp://ftp.gnu.org/gnu/aspell/dict/en/aspell6-en-6.0-0.tar.bz2 | tar xj &&\
cd aspell6-en-6.0-0 && ./configure && make && sudo make install
cd $HOME/dotemacs/

# Setup markdown
echo "Setting up markdown ..."
sudo ln -s ~/.emacs.d/vendor/Markdown.pl /usr/local/bin/markdown

sudo mv $HOME/dotemacs/ $HOME/.emacs.d

echo "Updating submodules ..."
git submodule update --init
echo "Setup complete :-)"
