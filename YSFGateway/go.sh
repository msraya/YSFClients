sudo mount -o remount,rw /
sudo rm /var/log/pi-star/YSFG*
#sudo rm -r /tmp/news
dos2unix /home/pi-star/*cpp
dos2unix /home/pi-star/*.h
cp /home/pi-star/*.cpp .
cp /home/pi-star/*.h .
rm /home/pi-star/*.cpp
rm /home/pi-star/*.h

set -e
make
sudo systemctl stop ysfgateway
sudo cp ./YSFGateway /usr/local/bin
sudo systemctl start ysfgateway
sleep 4
tail -f  /var/log/pi-star/YSFGateway*


