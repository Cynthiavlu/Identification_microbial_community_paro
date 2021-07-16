# NanoCLUST Data analysis 

## Installation 

### Nextflow

``` 
conda install nextflow
```

### NanoCLUST 
Nanoclustwas cloned from github 

```
git clone https://github.com/genomicsITER/NanoCLUST.git
```
NCBI 16s database was downloaded inside de NanoCLUST directory 
```
cd NanoCLUST/
mkdir db db/taxdb
wget https://ftp.ncbi.nlm.nih.gov/blast/db/16S_ribosomal_RNA.tar.gz && tar -xzvf 16S_ribosomal_RNA.tar.gz -C db
wget https://ftp.ncbi.nlm.nih.gov/blast/db/taxdb.tar.gz && tar -xzvf taxdb.tar.gz -C db/taxdb
```

Run Nanoclust from **inside** the NanoCLUST directory 

testrun was performed as 
```
nextflow run main.nf -profile test,docker
```

the original main.nf file from NanoCLUST was duplicated as main2.nf


SCRIPT change: main2.nf

change line439: -evalue 11 >>> -evalue 1E-40

change line450: -evalue 11 >>> -evalue 1E-40

main2.nf can be found here [main2.nf](https://github.com/Cynthiavlu/Identification_microbial_community_paro/blob/main/NanoCLUST_analysis/main2.nf) 

NanoCLUST was run using: 
```
nextflow run main2.nf \
-profile docker \
--reads '/home/user/MinION_Runs/20210614_paro_flongle/trimmeddata/BC0*_trimmed.fastq' \
--db "db/16S_ribosomal_RNA" \
--tax "db/taxdb/"
```


