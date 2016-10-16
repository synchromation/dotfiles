VUNDLE_DIR=~/.vim/bundle/Vundle.vim

if [ ! -d "$VUNDLE_DIR" ]; then
    ## Install Vundle
    git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_DIR
    ## Install vim plugins
    vim +PluginInstall +qall
fi
