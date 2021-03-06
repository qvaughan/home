#! /bin/bash

test -n "$KILL_EVERYTHING" && rm -rf ~/.vim ~/.vimrc ~/.bash_profile ~/.bash_includes

test ! -d ~/.vim && mkdir ~/.vim
test ! -d ~/.vim/.backup && mkdir ~/.vim/.backup
test ! -d ~/.vim/.swp && mkdir ~/.vim/.swp
test ! -d ~/.vim/.undo && mkdir ~/.vim/.undo

cp -Rf $(dirname $BASH_SOURCE)/vim/autoload/ ~/.vim/autoload/
cp -Rf $(dirname $BASH_SOURCE)/vim/bundle/ ~/.vim/bundle/
cp -Rf $(dirname $BASH_SOURCE)/vim/colors/ ~/.vim/colors/

cp -i $(dirname $BASH_SOURCE)/vim/vimrc ~/.vimrc

test ! -d ~/.bash_includes && mkdir ~/.bash_includes
cp -i $(dirname $BASH_SOURCE)/bash/bash_includes/* ~/.bash_includes
cp -i $(dirname $BASH_SOURCE)/bash/bash_profile ~/.bash_profile
cp -i $(dirname $BASH_SOURCE)/bash/bashrc ~/.bashrc

echo 
echo Done with installation, to activate the new .bash_profile in the current terminal, execute 'source ~/.bash_profile'
echo
