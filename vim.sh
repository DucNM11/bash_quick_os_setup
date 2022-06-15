sudo apt-get update -y
sudo apt-get install -y vim
sudo apt-get install -y tree
echo "set wildmenu" >> ~/.vimrc
echo "set wildmode=longest:full,full" >> ~/.vimrc
echo "set tabstop     =4" >> ~/.vimrc
echo "set softtabstop =4" >> ~/.vimrc
echo "set shiftwidth  =4" >> ~/.vimrc
echo "set expandtab" >> ~/.vimrc
