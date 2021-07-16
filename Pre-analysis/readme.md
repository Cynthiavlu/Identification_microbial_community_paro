# Pre-analysis of the MinION data
## Table of contents 
* Installation 
* Quality control
* Adapter trimming 
* Quality filtering


## Installation 

### NanoPlot 
```
conda install -c bioconda nanoplot
```

### Porechop 
```
git clone https://github.com/rrwick/Porechop.git
cd Porechop
python3 setup.py install
porechop -h
```

### fastp 
```
conda install -c bioconda fastp
```

## Quality Control

Data was collected after MinION sequencing. 
All fastq files were concatenated using a command line command in the local terminal

```
cat /Users/User/Barcode01/*fastq > barcode1.fastq
```

After concatenating the files. The quality of the data was checked using NanoPlot
```
Nanoplot -o /path/to/output/folder --fastq path/to/input/files.fastq

NanoPlot -o /home/user/MinION_Runs/20210614_paro_flongle/Nanoplot/plotrawdata/BC01 \
--fastq /home/user/MinION_Runs/20210614_paro_flongle/rawdata/BC01.fastq
```
this was repeated for all barcodes which were used in the sequence run

## Adapter trimming 
Adapter were trimmed using Porechop 
NOTE: Porechop has been unsuppored since 2018. If you used a sequencing kit which was produced after this, Porechop might not have the adapter included which make the tool unsuitable for you. Check adapters.py in the Porechop directory [poreshop](https://github.com/rrwick/Porechop#known-adapters) if it is usable. 

``` 
python porechop-runner.py -i /path/to/inpute/barcode/BC01.fastq -o /path/to/output/file/BC01_trimmed.fastq

python porechop-runner.py -i /home/user/MinION_Runs/20210614_paro_flongle/rawdata/BC01.fastq -o /home/user/MinION_Runs/20210614_paro_flongle/trimmeddata/BC01_trimmed.fastq

python porechop-runner.py -i /home/user/MinION_Runs/20210614_paro_flongle/rawdata/BC02.fastq -o /home/user/MinION_Runs/20210614_paro_flongle/trimmeddata/BC02_trimmed.fastq

python porechop-runner.py -i /home/user/MinION_Runs/20210614_paro_flongle/rawdata/BC03.fastq -o /home/user/MinION_Runs/20210614_paro_flongle/trimmeddata/BC03_trimmed.fastq
```

after adapter trimming, quality control was repeated.

## Quality filtering 


# Original Links tools 
* [NanoPlot](https://github.com/wdecoster/NanoPlot) 
* [Porechop](https://github.com/rrwick/Porechop)
* [Fastp](https://github.com/OpenGene/fastp)
