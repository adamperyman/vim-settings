#!/bin/bash

home_dir=${1:-"$HOME"}
VIM_CONFIG_PATH=$home_dir/.vim_runtime

# Backup Amix's my_configs.vim
if [ -f $VIM_CONFIG_PATH/my_configs.vim ]; then
  echo "Beginning my_configs.vim backup.."
  sudo -S mv $VIM_CONFIG_PATH/my_configs.vim $VIM_CONFIG_PATH/my_configs.vim.BAK
  echo "my_configs.vim backed up successfully.\n"
else
  echo "my_configs.vim file not found, no backup necessary.\n"
fi

# Patch .vimrc
echo "Beginning Adam's .vimrc patch.."
sudo sh -c 'cat .vimrc > $VIM_CONFIG_PATH/my_configs.vim'
echo "Adam's .vimrc patch complete.\n"

echo "Adam's Vim settings have been applied successfully. Have a wonderful day :)"
