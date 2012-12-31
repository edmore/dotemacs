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

sudo mv $HOME/dotemacs/ $HOME/.emacs.d
git submodule update --init
echo "Setup complete :-)"
