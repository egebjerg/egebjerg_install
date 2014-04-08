PKGS="wajig gedit libreoffice chromium-browser gimp openshot scribus openssh-server vim"
TO_REMOVE="abiword gnumeric apport update-manager update-manager-core"

sudo apt-get -y install $PKGS
sudo apt-get -y remove $TO_REMOVE

#cp autostart /etc/skel/.config/lxsession/Lubuntu/
cp autostart /home/elev_skel/.config/lxsession/Lubuntu/
cp autostart /home/elev/.config/lxsession/Lubuntu/
cp -b lightdm.conf /etc/lightdm/lightdm.conf

#./create_users.sh

cp -r website/ /home/egeadmin
ln -s /home/egeadmin/website/index.html /home/elev_skel/Skrivebord/intro.html

cp templates/* /home/elev_skel/Skrivebord/
cp templates/* /home/elev_skel/Skabeloner/
