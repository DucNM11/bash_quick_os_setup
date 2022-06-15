input="${1:-3.9.9}"
sudo apt-get -y install ca-certificates
sudo apt-get update
sudo apt-get -y upgrade
wget https://www.python.org/ftp/python/$input/Python-$input.tgz
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev
tar xvf Python-$input.tgz
cd Python-$input
./configure --enable-optimizations
make -j$(nproc)
sudo make altinstall
cd ..
sudo rm -rf Python-$input.tgz Python-$input
echo "alias python=python${input%.*}" >> ~/.bashrc
echo "alias pip=pip${input%.*}" >> ~/.bashrc
source ~/.bashrc
