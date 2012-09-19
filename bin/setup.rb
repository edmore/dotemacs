#! /usr/bin/ruby

##########################################################
# Description - Setup emacs configuration
# Author - www.edmoremoyo.com
##########################################################

home = File.expand_path('~')
target_directory = "#{home}/.emacs.d/"
backup_directory = "#{home}/.emacs.d/"

system("sudo mkdir #{backup_directory}")

# Backup the current emacs dotfiles
system("sudo mv #{home}/.emacs #{backup_directory}")
system("sudo mv #{home}/.emacs.d/ #{backup_directory}/.emacs.d/")
