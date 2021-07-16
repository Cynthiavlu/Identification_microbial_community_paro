# Pre-analysis of the MinION data
## Table of contents 
* Installation 
* NanoPlot 
* Porechop
* Fastp (note only for ONTrack)

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






Data was collected after MinION sequencing. 
All fastq files were concatenated using a command line command in the local terminal

```
cat /Users/cynthiavanlunteren/Barcode01/*fastq > barcode1.fastq
```

after concatenating the files. The quality of the data was checked using NanoPlot






# Original Links tools 
* [NanoPlot] (https://github.com/wdecoster/NanoPlot) 
* [Porechop] (https://github.com/rrwick/Porechop)
* [Fastp] (https://github.com/OpenGene/fastp)
