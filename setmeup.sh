sudo apt-get install\
  git\
  vim\
  tmux\
  curl\
  zsh
# install ohmyzsh and change default shell to zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# install vim plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/matt1light/dotfiles.git
# copy vimrc and zshrc to main directory
cp dotfiles/init.vim ~/.vimrc
cp dotfiles/.zshrc ~/.zshrc
# install all vim plugins
vim +PlugInstall
#tmux setup
git clone https://github.com/gpakosz/.tmux.git
ln -s -f ~/.tmux/.tmux.conf
cp -u ~/.tmux/.tmux.conf.local ~/.
