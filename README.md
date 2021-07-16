# Identification_microbial_community_paro

The elderly community is growing due to increasing life expectancy and an aging population. The elderly and people with cognitive impairment have a higher risk of infection. These vulnerable groups may experience more severe symptoms of infection. The elderly and people with dementia are more prone to social isolation, loneliness, agitation, depression and stress. 'Personal assistive robot' (Paro) is a socially interactive robot that can be used in such situations, which has positive effects on mental well-being. Often, there is only 1 Paro available within a residential group. The robotic technology incorporated in Paro makes cleaning a challenge. This raises concerns that Paro could contribute to the spread of microorganisms.

This research was initiated to develop and optimize a method to measure the level of contamination on Paro and to identify the microbial community. Here are the scripts and commands used in the data analysis.

# Table of Contents 
* [Pre-analysis](https://github.com/Cynthiavlu/Identification_microbial_community_paro/tree/main/Pre-analysis) 
* [Analysis using NanoCLUST](https://github.com/Cynthiavlu/Identification_microbial_community_paro/tree/main/NanoCLUST_analysis)
* [Analysis using ONTrack](https://github.com/Cynthiavlu/Identification_microbial_community_paro/tree/main/ONTrack_analysis)

Two pipeline were used which were available on github. for our study, some settings were changes. 

NanoCLUST is a pipeline which creates clusters based on 5-mers and each read in a cluster is used to create a consensus sequence. 
The consensus sequence is then blasted against the NCBI 16s database for species identification. 

MetatONTrack is a part of ONTrack which is still in the experimental phase. 
MetatONTrack takes each read and blasts to the NCBI 16s database. 
As a result of the blasts, clusters are formed after which the ONTrack script can be used to create a consensus sequence. 


# original source pipelines 
* [NanoCLUST original link](https://github.com/genomicsITER/NanoCLUST) 
* [ONTrack original link](https://github.com/MaestSi/ONTrack) 
