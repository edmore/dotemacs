#! /bin/bash

##########################################################
# Description - Setup emacs configuration
# Author - www.edmoremoyo.com
##########################################################

export BACKUP_DIR=$HOME/.emacs.d_backup

if [ -e $HOME/.emacs -o -d $HOME/.emacs.d/ ]; then
    sudo mkdir $BACKUP_DIR
fi

if [ -e $HOME/.emacs ]; then
    sudo mv $HOME/.emacs $BACKUP_DIR/
fi

if [ -d $HOME/.emacs.d/ ]; then
    sudo mv $HOME/.emacs.d/ $BACKUP_DIR/.emacs.d/
fi

sudo mv $HOME/dotemacs/ $HOME/.emacs.d
git submodule update --init
echo "Setup complete :-)"



