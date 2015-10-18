sudo apt-get install nis -qq

#Prepare section 04
sudo apt-get install apport prelink whoopsie -qq

#Prepare section 05
sudo apt-get install rsh-client rsh-redone-client talk -qq
sudo touch /etc/inetd.conf
echo 'shell.bla' > /tmp/inetd
sudo cp /tmp/inetd /etc/inetd.conf
echo 'start on runlevel [2345]' > /tmp/runxinit
sudo cp /tmp/runxinit /etc/init/xinetd.conf

#Prepare section 06
sudo apt-get install avahi-daemon cups isc-dhcp-server slapd rpcbind nfs-kernel-server bind9 biosdevname
sudo apt-get remove ntp
sed -i '/server /d' /etc/ntp.conf 2>/dev/null
sudo apt-get install vsftpd
sed -i 's/^Protocol .*/Protocol 1/g' /etc/ssh/sshd_config
sed -i 's/^IgnoreRhosts .*/IgnoreRhosts No/g' /etc/ssh/sshd_config

#Prepare section 07
sudo sysctl net.ipv4.ip_forward=1
sudo sysctl net.ipv4.conf.all.send_redirects=1
sudo sysctl net.ipv4.conf.default.send_redirects=1
sudo sysctl net.ipv4.conf.all.accept_source_route=1
sudo sysctl net.ipv4.conf.default.accept_source_route=1
sudo sysctl net.ipv4.conf.all.accept_redirects=1
sudo sysctl net.ipv4.conf.default.accept_redirects=1
sudo sysctl net.ipv4.conf.all.secure_redirects=1
sudo sysctl net.ipv4.conf.default.secure_redirects=1
sudo sysctl net.ipv4.conf.all.log_martians=0
sudo sysctl net.ipv4.conf.default.log_martians=0
sudo sysctl net.ipv4.icmp_echo_ignore_broadcasts=0
sudo sysctl net.ipv4.icmp_ignore_bogus_error_responses=0
sudo sysctl net.ipv4.conf.all.rp_filter=0
sudo sysctl net.ipv4.conf.default.rp_filter=0
sudo sysctl net.ipv4.tcp_syncookies=0
sudo sysctl net.ipv6.conf.all.accept_ra=1
sudo sysctl net.ipv6.conf.default.accept_ra=1
sudo sysctl net.ipv6.conf.all.accept_redirects=1
sudo sysctl net.ipv6.conf.default.accept_redirects=1
sudo chmod 777 /etc/hosts.allow
sudo chmod 777 /etc/hosts.deny

#Prepare section 08
sudo chmod 777 /etc/rsyslog.conf
