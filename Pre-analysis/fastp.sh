#!/bin/bash 

#filter trimmed data using fastp for minimal length of 1400bp and maximum length 1700bp and the quality of >8
#loop through the files in the folder and run all of them

files="/home/cynthia/MinION_Runs/20210614_paro_flongle/trimmeddata/BC*trimmed.fastq"

for f in $files 
do
    echo "filtering fastq file $f"
    fastp -i $f -q 8 -l 1400 --length_limit 1700 -R "Filtered data Paro data" --html "${f}.html" -o "${f}_qced.fastq"

    echo "filtering fastq file $f done"

done
