# Library path
mkdir -p $HOME/Desktop/library

# install node
brew update
brew install node

# Install elasticsearch
wget -c https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-8.11.3-darwin-x86_64.tar.gz
tar xfvz elasticsearch-8.11.3-darwin-x86_64.tar.gz
mv elasticsearch-8.11.3 $HOME/Desktop/elasticsearch
wget -c https://artifacts.elastic.co/downloads/kibana/kibana-8.11.3-darwin-x86_64.tar.gz
tar xfvz kibana-8.11.3-darwin-x86_64.tar.gz
mv kibana-8.11.3-darwin-x86_64 $HOME/Desktop/library/kibana
