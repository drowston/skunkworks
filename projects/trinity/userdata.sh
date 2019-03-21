#!/usr/bin/env bash

now=$(date "+DATE: %Y-%m-%d%nTIME: %H:%M:%S")

useradd drowston -m -s /bin/bash

mkdir /home/drowston/.ssh

echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC/MkHYDp2K1wNMMWkJA1VBInS5p4YJBYqoT/5pmiKFt7u8ZlDzmOmCsSkRDAxcGB7mqtICy98y2oA829sXHsgiBOt89raTC1gUBMKS0YAM9Ny178Dhyu5x8UxrSjknyBhtzUUgTWyk7ATlW3gvgGt89BS/SEvmIwulgLb8YSx4nIWyz6IgqoefkeGnix0AMnPSewJJ6JoctZ5rJhgl8a4Ht8V6KNJnrjiGG5KwdvGRTlQRYPOOHG7Nc+Va4DXLtzNO6hmmLgIMXXHtmKYM4jFarl1JY7u7qBqlQvsZkMTSVF4KqEC1kCfCIfcVG55JkGYa8i/4baFpsIPg8UM8sri7" >> /home/drowston/.ssh/authorized_keys

echo "-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAABFwAAAAdzc2gtcn
NhAAAAAwEAAQAAAQEAvzJB2A6ditcDTDFpCQNVQSJ0uaeGCQWKqE/+aZoihbe7vGZQ85jp
grEpEQwMXBge5qrSAsvfMtqAPNvbFx7IIgTrfPa2kwtYFATCktGADPTcte/A4crucfFMa0
o5J8gYbc1FIE1spOwE5Vt4L4BrfPQUv0hL5iMLpYC2/GEseJyFss+iIKqHn5Hhp4sdADJz
0nsCSeiaHLWeayYYJfGuB7fFeijSZ644hhuSsHbxkU5UEWDzjhxuzXPlWuA1y7czTuoZpi
4CDF1x7ZimDOIxWq5dSWO7u6gapUL7GZDE0lReCqhAtZAnwiH3FRueSZBmGvIv+G2habCD
4PFDPLK4uwAAA9hfhkecX4ZHnAAAAAdzc2gtcnNhAAABAQC/MkHYDp2K1wNMMWkJA1VBIn
S5p4YJBYqoT/5pmiKFt7u8ZlDzmOmCsSkRDAxcGB7mqtICy98y2oA829sXHsgiBOt89raT
C1gUBMKS0YAM9Ny178Dhyu5x8UxrSjknyBhtzUUgTWyk7ATlW3gvgGt89BS/SEvmIwulgL
b8YSx4nIWyz6IgqoefkeGnix0AMnPSewJJ6JoctZ5rJhgl8a4Ht8V6KNJnrjiGG5KwdvGR
TlQRYPOOHG7Nc+Va4DXLtzNO6hmmLgIMXXHtmKYM4jFarl1JY7u7qBqlQvsZkMTSVF4KqE
C1kCfCIfcVG55JkGYa8i/4baFpsIPg8UM8sri7AAAAAwEAAQAAAQBMfOSOdLpd0sqE7rdg
Xa77kbc0lmourcLctrPGt1zcNbarFhuIeEHigNE2+qTvKs8h5HCDod+2zmbC8glh5HSX93
Pl2CUOClnAGG9moN0jUcoCFtoI+lAN0USLH3RiD9CGDLp8w7yU9b63qrIX/r4BjPvH0jpa
5OZB3Y5WxOEvlmvJ1tnwBLU+9y1oSoOAfMIBgRF2TzOoupVVf4REB1pHTS/wAS+10D7OuO
zLZX2cmHFdnLdD+0Az12Koan7dsX+RNAhUn+Qy1DNawUE8es8tx0jWKAuMEiXH2MEEG9pV
oRXbSdL3JOg2mE55KhmN4EJjhj35DoRZDKX9TNGrU53xAAAAgQDFUCNBVYyOgPemnivYmr
0BcIBg3tjHo91iLisSFnB8IE4LPaZe30n63rXjFpTApmVutAUcvwThmGbw9H/q0+jnlKF9
flnRrw25dtkaykzwbcjL2tbDBxt0v7Gm2eKQC+uwnEFwStTAG5wd/pVf3/UztuOg0tIkfU
8LOpmh67DBXwAAAIEA/f3o0M1IWSzzbqcDroz1ED4Q98oi7mElDgFhhbYo7X/O2KuBXd9l
DDnqfApM7B1ea5MWHTGzdhDYwAZxnxItTKkHXHr4Wy2MHi+Tn1z6VWhdYWpKcTM6907rKN
yUlxSkmjJmULt2sL5zWims6xNuft1AsSLCkwsax7JkKguSDQ8AAACBAMC1PzTGtoNSc4WU
NG/ir9JS3akEwVX2wOCOvyU3wqz59kA9vb12OOtRDpYR4YV7OIQJr7uem1qBcEGW713+D5
TMAmY4n6AWQWFYJxWDDFKEra4TO0EUd/pTzJL6DVwHWqAflDpzD4f4VLZo29uTxhPOqtJT
fGh/gBZYgpojOvGVAAAAG2Ryb3dzdG9uQGRyb3dzdG9uLW1hYy5sb2NhbAECAwQFBgc=
-----END OPENSSH PRIVATE KEY-----" >> /home/drowston/.ssh/id_rsa

chown -R drowston:drowston /home/drowston 
chmod 0700 /home/drowston/.ssh
chmod 0600 /home/drowston/.ssh/*


echo "drowston    ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/drowston


#echo "one" >> /etc/hostname
#hostname -F /etc/hostname

#apt install -y apache2 
#service apache2 start
#chkconfig apache2 on
# echo "<html><h1>Terraform Userdata</h1>${now}</html>" > /var/www/html/index.html


#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#sudo apt-key fingerprint 0EBFCD88
#sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
#  $(lsb_release -cs) \
#  stable"
#  sudo apt-get update
#  sudo apt-get install docker-ce docker-ce-cli containerd.io

# sudo apt install docker.io -y

# sudo docker run -v /var/www/html:/usr/share/nginx/html:ro -p 80:80 -d nginx
