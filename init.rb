#! /usr/bin/ruby

##########################################################
# Description - Initialize my emacs configuration
# Author - www.edmoremoyo.com
##########################################################

user = ENV['USER']
target_directory = "/Users/#{user}/dotfiles/"
backup directory = "/Users/#{user}/dotfiles_backup/"
system("sudo mkdir #{backup_directory}")

# Backup the current emacs dotfiles
system("mv /Users/#{user}/.emacs #{backup_directory}")
system("mv /Users/#{user}/.emacs.d/ #{backup_directory}/.emacs.d/")

system("sudo ln -s #{target_directory}.emacs /Users/#{user}/.emacs")