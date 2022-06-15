sudo apt-get update -y
sudo apt-get install -y xclip
echo "alias xclip='xargs echo -n | xclip -selection clipboard'" >> ~/.bashrc
source ~/.bashrc