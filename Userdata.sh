sudo su
yum upgrade -y
yum install -y amazon-efs-utils git fio
mkdir /mnt/efs
mount -t efs fs-05b8b94f:/ /mnt/efs
cd /mnt/efs
git clone https://github.com/leoshan/awsnitrotest.git
