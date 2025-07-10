echo "Memoria swap"
sudo fdisk /dev/sdc << EOF
n
p
1


+512M
t
82
w
EOF

sudo mkswap /dev/sdc1
sudo swapon /dev/sdc1

echo "Memoria"
sudo fdisk /dev/sdd << EOF
n
p
1


+10M
n
p
2


+1.5G
t
1
8e
t
2
8e
w
EOF


echo "Volumenes fisicios"
sudo pvcreate /dev/sdd1 /dev/sdd2

echo "Grupos de volumenes"

sudo vgcreate vg_datos /dev/sdd1 /dev/sdd2

sudo lvcreate -L 10M -n lv_docker vg_datos
sudo lvcreate -l 100%FREE -n lv_multimedia vg_datos


sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_multimedia

echo "fstab"

sudo su -
cat <<FIN >> /etc/fstab
/dev/mapper/vg_datos-lv_docker /var/lib/docker ext4 defaults 0 0
/dev/mapper/vg_datos-lv_multimedia /Multimedia ext4 defaults 0 0
FIN

exit

sudo lvs
sudo vgs
sudo pvs
free -h
