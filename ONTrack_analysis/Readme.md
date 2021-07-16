ONTrack was used during the testing stages of this study where ONTrack was compared to NanoCLUST. 

# Table of contents 
* installation 
* analysis


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

The quality setting was changed: 

SCRIPT CHANGE MetatONTrack.sh

change line42: -perc_identity 0.77 >>> -perc_identity 0.90

## Analysis 

activate conda environment 
```
conda activate ONTrack_env 
```

Files were renamed to `BC*_qced.fastq` 
seqtk was used to generate the corrosponding fasta files 
`seqtk seq -A BC0*_qced.fastq > BC0*_qced.fasta`

A script was made to make sure all the files could be analysed: [date_MetatONTrackrun.sh](


