sudo sed -i 's/#ControllerMode = dual/ControllerMode = bredr/g' /etc/bluetooth/main.conf
sudo /etc/init.d/bluetooth restart
cp ./connection.sh /etc/init.d/connection.sh
sudo chmod +x /etc/init.d/connection.sh