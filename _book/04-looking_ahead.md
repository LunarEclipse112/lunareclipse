
# Looking ahead





To demonstrate my ability to learn new skills and continue to develop myself I will try to learn as much as I can in four days about single cell next generation sequencing. 

I chose this skill because NGS is something that I find very interesting and NGS from a single cell sounds awesome. 

### Plan

First a small overview of how I want to structure my 4 days to make sure I best make use of the time. By the end of it I can hopefully run a analysis, or part of one that isn't too complicated. To this end I will need to read up about it and search for usable data used in research to try and mimic what they have done. Hopefully in the future this will allow me to beter develop the skills needed to run my own analysis on Single Cell NGS data. 


|Day Number |Activity to do                                                                                              |Completion    |
|:----------|:-----------------------------------------------------------------------------------------------------------|:-------------|
|Day 1      |Reading about single cell NGS and looking for research articles where this has been used for analysis       |DONE          |
|Day 2      |Trying to get everything to work to mimic the analysis found in the article                                 |WORKING ON IT |
|Day 3      |Continue with the reproduction of the article analysis untill done                                          |NOT DONE      |
|Day 4      |Write a report on what I have learned and things I need to learn more about, a what's next secion let's say |NOT DONE      |

### Next generation sequencing

Next generation sequencing (NGS) or massively parallel sequencing is a technology which allows for fast and precise sequencing of DNA or cDNA. This is done by parallel sequencing of a very high number of DNA (or cDNA) fragments and provides high depth and much insight into genomes of organisms or can be used to explore gen expression in a single organism. With bioinformatic analysis the data acquired can be put together to form a complete genome or give insight in to cellular activity of an organism (@behjati_what_2013). The technology has brought many different advances in science and is now being looked at to be implemented in the diagnostics field as a noninvasive tool to diagnose infectious diseases in immunocompromised hosts (@jose_f_camargo_1_asim_a_ahmed_2_martin_s_lindner2_michele_i_morris1_next-generation_nodate).

Although the technology is very impressive and very useful for a wide range of applications (@behjati_what_2013) it has a significant drawback. While a picture can be formed when looking at RNA expression in tissue or type specific cells it's always clouded due to the interference of different cells in the same "sample". By design NGS utilizes a very large amount of cDNA fragments that need to be analysed *in silico*
 to align the fragments to a reference genome and gain information about the genes expressed. The problem arises when one wants to more accurately look at how much a certain gene was expressed. Due to differences in cellular expression between cells the accuracy of determination of gene expression will always be limited. Two cells of the same type might be producing different quantities of RNA that is used measured in the NGS analysis (as cDNA) but these differences can't be retraced because each run utilizes cDNA fragments from multiple cells. As a solution to this problem (among others) is to run a differential gene expression analysis (DGE). The DGA analysis provides information about the statistical difference in expressed genes based on a probability value. It is a reliable method to find the *Log2 fold changes* which quite accurately calculate an answer to the how much question of the problem. Another solution is single cell next generation sequencing which also provides answers to this problem. 
 
### Single cell next generation sequencing

Single cell transcriptomics is used to characterize cell states (@stuart_comprehensive_2019). Ranging from gene expression and spatial transcriptomics to chromatine accesibility and immunophenotyping scRNA-seq technology has a broad spectrum of applications, each with their own strengths and weaknesses. Most measure only a very specific aspect of cellular identity posing a clear need to use the information acquired from one analysis to strengthen the conclusion of another. 

### scATAC-seq

Single cell NGS has been used in research to better understand the developmental programs encoded in the linear genome sequence (@fang_comprehensive_2021). Single cell NGS can also be used to identify the *cis*-elements in organisms and specific cell types. Cell type is established due to regulation of spatiotemporal gene expression programs (@the_encode_project_consortium_integrated_2012). These interact with sequence specific transcription factors and *cis-*regulatory sequences in a cell-type specific manner. Due to sensitivity to nucleases and transposases when active there have been different methods developed to find de *cis*-elements in organisms and specific cell types. Chromatine accesability methods are for example scTHIS-seq (single-cell transposome hypersensitive site sequencing) or scATAC-seq. In scATA-seq or single-cell ATAC-seq analysis allows for profiling of chromatine accessibility from hundreds of thousands cells in a single experiment (@fang_comprehensive_2021). 
 
Current methods often require the use of linear dimensionality reduction on a cell matrix of thousands of dimensions. Scaling this to millions of cells is a huge challenge. In addition scATAC-seq datasets do not posses the same level of sensitivity as scRNA-seq. To overcome the limitations a single nucleus analysis pipeline for ATAC-seq-SnapATAC [Git-hub link](https://github.com/kaizhang/SnapATAC2) has been proposed which I will be trying out here.

### SnapATAC

As posed before I will now be trying out the package SnapATAC on a provided dataset 10X (by the same author). The package runs in python so this will take more time than the expected 4 days but that's not a very big deal. 

