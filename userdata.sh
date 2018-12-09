#!/bin/bash
sudo su
#mount efs storage and git test script
yum install -y amazon-efs-utils git fio
mkdir /mnt/efs
mount -t efs fs-05b8b94f:/ /mnt/efs
cd /mnt/efs
#mkdir by system time for test
timedir=$(date '+%Y%m%d%H%M%S')
hostname=$(`curl http://169.254.169.254/latest/meta-data/public-hostname | cut -d '.' -f 1`)
mkdir $timedir $hostname
cd $timedir
git clone https://github.com/leoshan/awsnitrotest.git
# upgrade OS long time
yum upgrade -y
