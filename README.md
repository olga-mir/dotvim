Installation:

    git clone git://github.com/olga-mir/dotvim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

For more info:
http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/


Appendix
1. To set terminal emulator's colorscheme to used the Solarized palette:
let g:solarized_termcolors=256
or
export TERM=xterm-256color
