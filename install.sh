deluser --remove-home elev
deluser --remove-home elev_skel

PKGS="wajig gedit libreoffice chromium-browser gimp openshot scribus openssh-server vim"

sudo apt-get -y install $PKGS
sudo apt-get -y remove apport

cp autostart /etc/skel/.config/lxsession/Lubuntu/
cp -b lightdm.conf /etc/lightdm/lightdm.conf

#Create user elev and user elev-skel
ELEV="elev"
ELEV_PASSWD="egebjerg"

SKEL="elev_skel"
SKEL_PASSWD="egkgb"

adduser --disabled-password --gecos "" $SKEL
echo "$SKEL:$SKEL_PASSWD" | chpasswd

adduser --disabled-password --gecos "" $ELEV
echo "$ELEV:$ELEV_PASSWD" | chpasswd
