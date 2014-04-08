deluser --remove-home elev
deluser --remove-home elev_skel

#Create user elev and user elev-skel
ELEV="elev"
ELEV_PASSWD="egebjerg"

SKEL="elev_skel"
SKEL_PASSWD="egkgb"

adduser --disabled-password --gecos "" $SKEL
echo "$SKEL:$SKEL_PASSWD" | chpasswd

adduser --disabled-password --gecos "" $ELEV
echo "$ELEV:$ELEV_PASSWD" | chpasswd
