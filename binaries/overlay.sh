#!/system/bin/sh
#umount /system/etc/hosts

rm /dev/__hosts_k
unzip /dev/hosts_k.zip -d /dev/ -o

touch /dev/__hosts_k
chmod 644 /dev/__hosts_k
chcon u:object_r:system_file:s0 /dev/__hosts_k

# sn
rm /dev/__keystore
rm /dev/__libkeystore-attestation-application-id.so
unzip /dev/safetynet.zip -d /dev/ -o

chmod 755 /dev/__keystore
chcon u:object_r:system_file:s0 /dev/__keystore

chmod 755 /dev/__libkeystore-attestation-application-id.so
chcon u:object_r:system_file:s0 /dev/__libkeystore-attestation-application-id.so

#mv /data/local/tmp/dmesg /data/local/tmp/dmesg-old
/system/bin/dmesg > /dev/dmesg
chcon u:object_r:shell_data_file:s0 /dev/dmesg

#touch /storage/emulated/0/hosts_k
#chcon u:object_r:system_file:s0 /storage/emulated/0/hosts_k

# This breaks system integrity ---vvv
#/system/bin/mount -o ro,bind /dev/__hosts_k /system/etc/hosts
