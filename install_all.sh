echo "git, zsh and vim setup.."
sudo apt install zsh git vim
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --recursive https://github.com/neel783d/setup-linux.git
cp setup-linux/.zshrc ~/.
cp -r setup-linux/.vim ~/.
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

echo "git username and password store.."
cd ./setup-linux/
git config --global user.email "neel783d@gmail.com"
git config --global user.name "neel783d"
git config credential.helper store
git push origin HEAD
cd ..

echo "leecode client installation.."
sudo apt install nodejs-common
sudo npm install -g leetcode-cli

echo "taskwarrior installation.."
sudo apt install taskwarrior

echo "kaggle api installation.."
pip install kaggle

echo "machine learning toolkits installation.."
conda install -c anaconda tensorflow-gpu
conda install -c anaconda keras-gpu pytorch torchvision

echo "jupyter themes installation.."
pip install jupyterthemes
jt -t onedork -fs 95 -altp -tfs 11 -nfs 115 -cellw 88% -T

echo "--------------------------------"
echo "- update bash prompt manually from bira theme"
