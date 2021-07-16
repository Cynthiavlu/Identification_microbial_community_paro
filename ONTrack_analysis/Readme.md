ONTrack was used during the testing stages of this study where ONTrack was compared to NanoCLUST. 

# Table of contents 
* installation 


## Installation 
Downloading the NCBI 16s database 
```
echo 'date +%Y-%m-%d' > download_date.txt 
wget ftp://ftp.ncbi.nlm.nih.gov/blast/db/16s*
tar -xzvf 16S_ribosomal_RNA.tar.gz
```
Installing ONTrack 
```
git clone https://github.com/MaestSi/ONTrack.git
cd ONTrack
chmod 755 *
./install.sh
```

NOTE: there are some variable in the MetatONTrack.sh change this: 
SCRIPT CHANGE: MetatONTrack.sh
change line31: DB=/home/user/NCBI_nt_db/nt >>> /home/user/NCBI_16s_db/16S_ribosomal_RNA

