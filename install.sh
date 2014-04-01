PKGS="wajig gedit libreoffice chromium-browser gimp openshot scribus openssh-server vim"

sudo apt-get -y install $PKGS
sudo apt-get -y remove apport

cp autostart /etc/skel/.config/lxsession/Lubuntu/
cp -b lightdm.conf /etc/lightdm/lightdm.conf

./create_users.sh
