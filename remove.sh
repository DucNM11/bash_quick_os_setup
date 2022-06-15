pkg_name="${1:-packagge_nameeeeee}"
dpkg --list | grep $pkg_name
sudo apt-get remove -y $pkg_name
sudo apt-get purge -y $pkg_name
sudo apt-get autoremove -y
sudo apt-get autoclean -y
dpkg --list | grep $pkg_name
