# xinit
if [ ! -f ~/.xinitrc ];then
  cd ~ && ln -s .config/xinitrc .xinitrc
fi
# zsh
if [ ! -f ~/.zshenv ];then
  cd ~ && ln -s .config/zsh/zshenv .zshenv
fi
# profile
if [ ! -f ~/.gitconfig ];then
  cd ~ && ln -s .config/gitconfig .gitconfig
fi
# vim
if [ ! -f ~/.vimrc ];then
  cd ~ && ln -s .config/vimrc .vimrc
fi