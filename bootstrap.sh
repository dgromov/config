#!/bin/bash
set -e

root=$(pwd)

# GIT =======================================
ln -s $root/gitconfig ~/.gitconfig

git config user.email dmitriy.k.gromov@gmail.com
# ==========================================

# VIM =======================================
ln -s $root/vimrc ~/.vimrc

# from https://github.com/tpope/vim-pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# ==========================================

# ZSH ======================================
# From https://github.com/robbyrussell/oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Sets up my stuff
cp -r $root/oh-my-zsh/ ~/.oh-my-zsh/

# Need to force the link because the oh-my-zsh setup makes it.
ln -sf $root/zshrc ~/.zshrc
# ==========================================


# TMUX ======================================
brew install tmux

ln -s $root/tmux.conf ~/.tmux.conf
# ===========================================

echo "Manual Steps Remaining"
echo "- Set up iterm2 colors"
echo "- Start tmux automatically"
echo "- install java"
echo "- install vim colors"

