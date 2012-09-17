#! /usr/bin/ruby

##########################################################
# Description - Setup emacs configuration
# Author - www.edmoremoyo.com
##########################################################

home = File.expand_path('~')
target_directory = "#{home}/dotfiles/"
backup_directory = "#{home}/dotfiles_backup/"

system("sudo mkdir #{backup_directory}")

# Backup the current emacs dotfiles
system("sudo mv #{home}/.emacs #{backup_directory}")
system("sudo mv #{home}/.emacs.d/ #{backup_directory}/.emacs.d/")

system("sudo ln -s #{target_directory}.emacs #{home}/.emacs")
puts "Symbolic link to #{target_directory}.emacs is #{home}/.emacs."
