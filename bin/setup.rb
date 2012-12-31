#! /usr/bin/env ruby

##########################################################
# Description - Setup emacs configuration
# Author - www.edmoremoyo.com
##########################################################

home = File.expand_path('~')
backup_directory = "#{home}/.emacs.d_backup/"
cmds = []
old_emacs_file = File.exist?("#{home}/.emacs")
old_emacs_folder = File.directory?("#{home}/.emacs.d/")

cmds << "sudo mkdir #{backup_directory}" if (old_emacs_file || old_emacs_folder)
# Backup the current emacs dotfiles if they exist
cmds << "sudo mv #{home}/.emacs #{backup_directory}" if old_emacs_file
cmds << "sudo mv #{home}/.emacs.d/ #{backup_directory}.emacs.d/" if old_emacs_folder
# Rename dotfiles folder to .emacs.d
cmds << "sudo mv #{home}/dotemacs/ #{home}/.emacs.d/"
# update submodules
cmds << "git submodule update --init"

system cmds.join("&&")
puts "Setup complete :-)"
