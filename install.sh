PKGS="gedit libreoffice chromium-browser gimp openshot scribus openssh-server vim git"
TO_REMOVE="abiword gnumeric apport update-manager update-manager-core wajig"

sudo apt-get -y install $PKGS
sudo apt-get -y remove $TO_REMOVE
sudo apt-get -y dist-upgrade

echo "Checking for upgrades"
sudo do-release-upgrade -d

#cp -r home/* /etc/skel/

mkdir -p /etc/skel/.config/lxsession/Lubuntu/
mkdir -p /etc/skel/Skrivebord
mkdir -p /etc/skel/Skabeloner
cp autostart /etc/skel/.config/lxsession/Lubuntu/
cp -b lightdm.conf /etc/lightdm/lightdm.conf

cp -r website/ /home/egeadmin
ln -s /home/egeadmin/website/index.html /etc/skel/Skrivebord/intro.html

cp templates/* /etc/skel/Skrivebord/

#Now that everything is in place, create the users. Remmeber to log in to elev_skel before elev
#./create_users.sh

# Initialize git
cd /home/egeadmin
mkdir git
cd git
git init
