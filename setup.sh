#!/bin/bash

VIM_CONFIG_PATH=$HOME/.vim_runtime

# Backup Amix's my_configs.vim
if [ -f $VIM_CONFIG_PATH/my_configs.vim ]; then
  echo "Beginning my_configs.vim backup.."
  mv $VIM_CONFIG_PATH/my_configs.vim $VIM_CONFIG_PATH/my_configs.vim.BAK
  echo "my_configs.vim backed up successfully."
else
  echo "my_configs.vim file not found, no backup necessary."
fi

# Patch .vimrc
echo "Beginning Adam's .vimrc patch.."
cat .vimrc > $VIM_CONFIG_PATH/my_configs.vim
echo "Adam's .vimrc patch complete."

echo "Adam's Vim settings have been applied successfully. Have a wonderful day :)"
