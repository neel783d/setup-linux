# echo "install brew tap"
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# eval $(/opt/homebrew/bin/brew shellenv)

echo "brew related"
brew install git zsh

echo "install oh my zsh"
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

echo "setup git"
git clone git@github.com:neel783d/setup-linux.git
cp setup-linux/.zshrc ~/.
cp -r setup-linux/.vim ~/.
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox
cp ~/.vim/bundle/gruvbox/colors/gruvbox.vim ~/.vim/colors/
vim +PluginInstall +qall


# echo "git username and password store.."
# cd ./setup-linux/
# git config --global user.email "neel783d@gmail.com"
# git config --global user.name "neel783d"
# git config credential.helper store
# git push origin HEAD
# cd ..

echo "update your email to org email"
zsh
