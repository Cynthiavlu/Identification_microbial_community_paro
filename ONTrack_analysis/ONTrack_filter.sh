#!/bin/bash

# script was made to loop through the folder in order to filter the files to only obtain the files of interest for  further analysis
# In this case the inclusioncriteria were set to a total of 0,1% of the total passed cd reads from the barcode and a minimum of 100 reads. 
# in criteria were met, files are moved to a new folder for further analysis. 

minimal_reads=100
minimal_reads_perc=0.1

# totale hoeveelheid reads na fastp filtering. Data uit json files 
#jq '.summary.after_filtering.total_reads' BC01_trimmed.fastq.json 

total_reads=$( jq '.summary.after_filtering.total_reads' ~/MinION_Runs/20210325_16szymock_flongle/fastp/BC01_trimmed.fastq.json ) 

#echo "total reads are"    #test if declaring variable was working 

echo "$total_reads"

# go to folder what needs to be filtered 
# create folders passed and discarded 

mkdir /home/user/MinION_Runs/20210325_16szymock_flongle/20210623_ONTprep/MetatONTrack_output_logs/20210623_BC01/passed /home/user/MinION_Runs/20210325_16szymock_flongle/20210623_ONTprep/MetatONTrack_output_logs/20210623_BC01/discarded 

#determine whether reads are 0.1% of total and of there minimal 100 reads 

files="/home/user/MinION_Runs/20210325_16szymock_flongle/20210623_ONTprep/MetatONTrack_output_logs/20210623_BC01/BC00*.txt"
for f in $files 
do 
	sp_reads=$( wc -l < ${f} )

        #echo "$sp_reads found in ${f}"                         #check if reads per species was calculated 

       	perc_reads=$( echo "scale=5; $sp_reads / $total_reads * 100" | bc )

	#echo "$perc_reads is ${f}"                             #check if percentage reads is calculated 

	if [[ ( $(echo "$perc_reads >= $minimal_reads_perc" | bc -l ) == 1 && $(echo "$sp_reads >= $minimal_reads" | bc -l ) == 1 ) ]]
        then
	    mv ${f} /home/user/MinION_Runs/20210325_16szymock_flongle/20210623_ONTprep/MetatONTrack_output_logs/20210623_BC01/passed
	    echo "${f} is passed"                         #check if file is moved to passed
	else
	    mv ${f} /home/user/MinION_Runs/20210325_16szymock_flongle/20210623_ONTprep/MetatONTrack_output_logs/20210623_BC01/discarded 
	    echo "${f} is NOT passed"                         #check if file is moved to discarded
	fi


done	
