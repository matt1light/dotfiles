cd ~
sudo apt-get install\
  git\
  tmux\
  curl\
  zsh \
  software-properties-common\
  build-essential\
  python-dev\
  python3-dev\
  cmake
  
#needed for neovim
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
mkdir ~/.config/nvim
# install ohmyzsh and change default shell to zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# install nvim plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# copy vimrc and zshrc to main directory
cp dotfiles/init.vim ~/.config/nvim/init.vim
cp dotfiles/.zshrc ~/.zshrc
# compile YouCompleteMe
cd ~/.local/share/nvim/plugged/YouCompleteMe
./install.py
cd ~ 
# install all vim plugins
nvim +PlugInstall
#tmux setup
git clone https://github.com/gpakosz/.tmux.git
ln -s -f ~/.tmux/.tmux.conf
cp -u ~/.tmux/.tmux.conf.local ~/.
