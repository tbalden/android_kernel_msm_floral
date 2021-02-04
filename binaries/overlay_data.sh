#!/system/bin/sh

rm /data/local/tmp/__hosts_k
unzip /data/local/tmp/hosts_k.zip -d /data/local/tmp/ -o

touch /data/local/tmp/__hosts_k
chmod 644 /data/local/tmp/__hosts_k
chcon u:object_r:system_file:s0 /data/local/tmp/__hosts_k

# sn
rm /data/local/tmp/__keystore
rm /data/local/tmp/__libkeystore-attestation-application-id.so
unzip /data/local/tmp/safetynet.zip -d /data/local/tmp/ -o

chmod 755 /data/local/tmp/__keystore
chcon u:object_r:system_file:s0 /data/local/tmp/__keystore

chmod 755 /data/local/tmp/__libkeystore-attestation-application-id.so
chcon u:object_r:system_file:s0 /data/local/tmp/__libkeystore-attestation-application-id.so

#
mv /data/local/tmp/dmesg /data/local/tmp/dmesg-old
/system/bin/dmesg > /data/local/tmp/dmesg
chcon u:object_r:shell_data_file:s0 /data/local/tmp/dmesg

