# Quick command
echo "alias shutdown='shutdown now'" >> ~/.bashrc
echo "alias sleep='systemctl suspend'" >> ~/.bashrc
echo "alias open=xdg-open" >> ~/.bashrc
echo "ram(){
    ps -eo size,command --sort -size | grep $1 | awk '{ hr=$1/1024 ; sum +=hr} END {print sum}'
}" >> ~/.bashrc
source ~/.bashrc
sudo cp shutdown.desktop /usr/share/applications/shutdown.desktop
sudo cp reboot.desktop /usr/share/applications/reboot.desktop
sudo cp bluetooth.desktop /usr/share/applications/bluetooth.desktop


# Config not sleeping when close lid
sudo echo "HandleLidSwitch=ignore" >> /etc/systemd/logind.conf
sudo echo "HandleLidSwitchExternalPower=ignore" >> /etc/systemd/logind.conf
sudo service systemd-logind restart
