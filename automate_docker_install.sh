apt-get install clamav clamav-daemon -y
systemctl stop clamav-freshclam
freshclam
systemctl start clamav-freshclam
