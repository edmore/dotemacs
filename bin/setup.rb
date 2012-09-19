#! /usr/bin/ruby

##########################################################
# Description - Setup emacs configuration
# Author - www.edmoremoyo.com
##########################################################

home = File.expand_path('~')
target_directory = "#{home}/.emacs.d/"
backup_directory = "#{home}/.emacs.d/"

system("sudo mkdir #{backup_directory}")

# Backup the current emacs dotfiles if they exist
system("sudo mv #{home}/.emacs #{backup_directory}") if File.exist?("#{home}/.emacs")
system("sudo mv #{home}/.emacs.d/ #{backup_directory}/.emacs.d/") if File.directory?("#{home}/.emacs.d/")

# Rename dotfiles folder to .emacs.d
system("sudo mv #{home}/dotfiles/ #{home}/.emacs.d/")
