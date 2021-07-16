#!/bin/bash

cd
cd ONTrack/

sh MetatONTrack.sh /home/user/MinION_Runs/20210325_16szymock_flongle/20210623_ONTprep/BC02_qced.fastq

echo ‘barcode 2 is finished’ 

cd 
cd /home/user/MinION_Runs/20210325_16szymock_flongle/20210623_ONTprep/MetatONTrack_output_logs

mkdir "$(date +"%Y%m%d")_BC02"
mv BC*.txt "$(date +"%Y%m%d")_BC02"

echo 'files barcode 2 are moved'

cd
cd ONTrack/

sh MetatONTrack.sh /home/user/MinION_Runs/20210325_16szymock_flongle/20210623_ONTprep/BC03_qced.fastq

echo ‘barcode 3 is finished’ 

cd 
cd /home/user/MinION_Runs/20210325_16szymock_flongle/20210623_ONTprep/MetatONTrack_output_logs

mkdir "$(date +"%Y%m%d")_BC03"
mv BC*.txt "$(date +"%Y%m%d")_BC03"

echo 'files barcode 3 are moved'

cd
cd ONTrack/

sh MetatONTrack.sh /home/user/MinION_Runs/20210325_16szymock_flongle/20210623_ONTprep/BC05_qced.fastq

echo ‘barcode 5 is finished’ 

cd 
cd /home/user/MinION_Runs/20210325_16szymock_flongle/20210623_ONTprep/MetatONTrack_output_logs

mkdir "$(date +"%Y%m%d")_BC05"
mv BC*.txt "$(date +"%Y%m%d")_BC05"

echo 'files barcode 5 are moved'

cd
cd ONTrack/

sh MetatONTrack.sh /home/user/MinION_Runs/20210325_16szymock_flongle/20210623_ONTprep/BC06_qced.fastq

echo ‘barcode 6 is finished’ 

cd 
cd /home/user/MinION_Runs/20210325_16szymock_flongle/20210623_ONTprep/MetatONTrack_output_logs

mkdir "$(date +"%Y%m%d")_BC06"
mv BC*.txt "$(date +"%Y%m%d")_BC06"

echo 'files barcode 6 are moved'

cd
cd ONTrack/

sh MetatONTrack.sh /home/user/MinION_Runs/20210325_16szymock_flongle/20210623_ONTprep/BC07_qced.fastq

echo ‘barcode 7 is finished’ 

cd 
cd /home/user/MinION_Runs/20210325_16szymock_flongle/20210623_ONTprep/MetatONTrack_output_logs

mkdir "$(date +"%Y%m%d")_BC07"
mv BC*.txt "$(date +"%Y%m%d")_BC07"

echo 'files barcode 7 are moved'

echo " all done "
