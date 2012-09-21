#! /usr/bin/ruby

##########################################################
# Description - Setup emacs configuration
# Author - www.edmoremoyo.com
##########################################################

home = File.expand_path('~')
backup_directory = "#{home}/.emacs.d_backup/"

system("sudo mkdir #{backup_directory}")

# Backup the current emacs dotfiles if they exist
system("sudo mv #{home}/.emacs #{backup_directory}") if File.exist?("#{home}/.emacs")
system("sudo mv #{home}/.emacs.d/ #{backup_directory}.emacs.d/") if File.directory?("#{home}/.emacs.d/")

# Rename dotfiles folder to .emacs.d
system("sudo mv #{home}/dotemacs/ #{home}/.emacs.d/")

# update submodules
system("git submodule update --init")

puts "Setup complete :-) , you may navigate to [ ~/.emacs.d/ ] to view your GNU Emacs config files."
