# vim-settings

### https://github.com/amix/vimrc is responsible for pretty much everything.

Note: [The Silver Searcher](https://github.com/ggreer/the_silver_searcher) is required to use Ag.

1. Install Amix's .vimrc `git clone https://github.com/amix/vimrc.git ~/.vim_runtime && sh ~/.vim_runtime/install_awesome_vimrc.sh`

2. Setup editorconfig
    * https://github.com/editorconfig/editorconfig-core-c
    * `git clone https://github.com/editorconfig/editorconfig-vim ~/.vim/bundle`

3. Append my settings to existing .vimrc `git clone https://github.com/x0bile/vim-settings ~/.vim/bundle/vim-settings && cat ~/.vim/bundle/vim-settings/.vimrc >> ~/.vimrc && rm -rf ~/.vim/bundle/vim-settings`

4. For code completion you will neet to setup [YouCompleteMe](https://github.com/Valloric/YouCompleteMe#full-installation-guide).
