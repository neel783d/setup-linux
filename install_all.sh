echo "setup zsh manually.."
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

echo "git, zsh and vim setup.."
sudo yum install -y zsh

git clone git@github.com:neel783d/setup-linux.git
cp setup-linux/.zshrc ~/.
cp -r setup-linux/.vim ~/.
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox
cp ~/.vim/bundle/gruvbox/colors/gruvbox.vim ~/.vim/colors/
vim +PluginInstall +qall

## User change
# sudo chsh -s $(which zsh) ec2-user

sudo yum install -y tmux tree

echo "git username and password store.."
cd ./setup-linux/
git config --global user.email "neel783d@gmail.com"
git config --global user.name "neel783d"
git config credential.helper store
git push origin HEAD
cd ..

chmod +x $HOME/.vim/scripts/shopt

## add libraries
mkdir -p $HOME/library
cd $HOME/library
cd -
## -- end --

## Add conda setup
## -- end --

## Add all projects
mkdir -p $HOME/projects
cd $HOME/projects/
ls -lh .
cd -
## -- end --

zsh
