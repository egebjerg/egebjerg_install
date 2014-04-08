PKGS="wajig gedit libreoffice chromium-browser gimp openshot scribus openssh-server vim"
TO_REMOVE="abiword gnumeric apport update-manager update-manager-core"

sudo apt-get -y install $PKGS
sudo apt-get -y remove $TO_REMOVE

cp autostart /etc/skel/.config/lxsession/Lubuntu/
cp -b lightdm.conf /etc/lightdm/lightdm.conf

./create_users.sh




