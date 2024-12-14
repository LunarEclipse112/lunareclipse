
# Looking ahead




## Single Cell NGS

To demonstrate my ability to learn new skills and continue to develop myself I will try to learn as much as I can in four days about single cell next generation sequencing. 

I chose this skill because NGS is something that I find very interesting and NGS from a single cell sounds awesome. 

### Plan

First a small overview of how I want to structure my 4 days to make sure I best make use of the time. By the end of it I can hopefully run a analysis, or part of one that isn't too complicated. To this end I will need to read up about it and search for usable data used in research to try and mimic what they have done. Hopefully in the future this will allow me to better develop the skills needed to run my own analysis on Single Cell NGS data. 



|Day Number |Activity to do                                                                                              |Completion |
|:----------|:-----------------------------------------------------------------------------------------------------------|:----------|
|Day 1      |Reading about single cell NGS and looking for research articles where this has been used for analysis       |DONE       |
|Day 2, 3   |Trying to get everything to work to mimic an analysis found in the article                                  |DONE       |
|Day 4      |Continue with the reproduction of the article analysis untill done                                          |DONE       |
|Day 5      |Write a report on what I have learned and things I need to learn more about, a what's next secion let's say |DONE       |



### Next generation sequencing

Next generation sequencing (NGS) or massively parallel sequencing is a technology which allows for fast and precise sequencing of DNA or cDNA. This is done by parallel sequencing of a very high number of DNA (or cDNA) fragments and provides high depth and much insight into genomes of organisms or can be used to explore gen expression in a single organism. With bioinformatic analysis the data acquired can be put together to form a complete genome or give insight in to cellular activity of an organism (@behjati_what_2013). The technology has brought many different advances in science and is now being looked at to be implemented in the diagnostics field as a noninvasive tool to diagnose infectious diseases in immunocompromised hosts (@jose_f_camargo_1_asim_a_ahmed_2_martin_s_lindner2_michele_i_morris1_next-generation_nodate).

Although the technology is very impressive and very useful for a wide range of applications (@behjati_what_2013) it has a significant drawback. While a picture can be formed when looking at RNA expression in tissue or type specific cells it's always clouded due to the interference of different cells in the same "sample". By design NGS utilizes a very large amount of cDNA fragments that need to be analysed *in silico*
 to align the fragments to a reference genome and gain information about the genes expressed. The problem arises when one wants to more accurately look at how much a certain gene was expressed. Due to differences in cellular expression between cells the accuracy of determination of gene expression will always be limited. Two cells of the same type might be producing different quantities of RNA that is used measured in the NGS analysis (as cDNA) but these differences can't be retraced because each run utilizes cDNA fragments from multiple cells. As a solution to this problem (among others) is to run a differential gene expression analysis (DGE). The DGA analysis provides information about the statistical difference in expressed genes based on a probability value. It is a reliable method to find the *Log2 fold changes* which quite accurately calculate an answer to the how much question of the problem. Another solution is single cell next generation sequencing which also provides answers to this problem. 
 
### Single cell next generation sequencing

Single cell transcriptomics is used to characterize cell states (@stuart_comprehensive_2019). Ranging from gene expression and spatial transcriptomics to chromatine accesibility and immunophenotyping scRNA-seq technology has a broad spectrum of applications, each with their own strengths and weaknesses. Most measure only a very specific aspect of cellular identity posing a clear need to use the information acquired from one analysis to strengthen the conclusion of another. 

### scATAC-seq

Single cell NGS has been used in research to better understand the developmental programs encoded in the linear genome sequence (@fang_comprehensive_2021). Single cell NGS can also be used to identify the *cis*-elements in organisms and specific cell types. Cell type is established due to regulation of spatiotemporal gene expression programs (@the_encode_project_consortium_integrated_2012). These interact with sequence specific transcription factors and *cis-*regulatory sequences in a cell-type specific manner. Due to sensitivity to nucleases and transposases when active there have been different methods developed to find de *cis*-elements in organisms and specific cell types. Chromatine accesability methods are for example scTHIS-seq (single-cell transposome hypersensitive site sequencing) or scATAC-seq. In scATA-seq or single-cell ATAC-seq analysis allows for profiling of chromatine accessibility from hundreds of thousands cells in a single experiment (@fang_comprehensive_2021). 
 
Current methods often require the use of linear dimensionality reduction on a cell matrix of thousands of dimensions. Scaling this to millions of cells is a huge challenge. In addition scATAC-seq datasets do not posses the same level of sensitivity as scRNA-seq. To overcome the limitations a single nucleus analysis pipeline for [ATAC-seq-SnapATAC](https://github.com/r3fang/SnapATAC/blob/master/README.md) has been proposed which I will be trying out here.

### SnapATAC

As posed before I will now be trying out the package SnapATAC on a provided dataset 10X (by the same author). The package runs in python so this will take more time than the expected 4 days but that’s not a very big deal.

### Python in R

To use python code chunks in Rmarkdown I downloaded the reticulate package. This chunk below is running python.


``` python

print("Hello World")
#> Hello World
```

Now to download the SnapATAC2 package we will need pip or maybe Anaconda. I am not yet sure what is the better option so I am trying to get Anaconda in my environment so I can maybe download the package and run it trough Rstudio. I am also trying to get it to install with pip, which should be easier I think.
Sadly using pip has not worked. I can get pip to install packages just fine but SnapAtac2 doesn't want to install. I checked the issues on the github page of the package and found that the rust and anndate package would be able to help so I downloaded them both but still nothing. I also read that snapatac2 hadn't been tested for windows but that was an older message so maybe that's not the issue. Lets proceed as if it is supposed to work and see if we can get it to do so. 
With pip failing we are left with Anaconda. Let's try do download a simple package first to see if it works properly. To check if anaconda works we installed the numpy package. The download was successful but downloading snapatac2 did not. It's time to look for a different package, I would prefer to find one for R, I am more comfortable working with R packages and I have limited time.  

### CellWalkR

The next package I found is CellWalkR. [CellWalkR](https://github.com/PFPrzytycki/CellWalkR/blob/master/examples/CellWalkR_Vignette.md) is a package to combine scATAC-seq data with labels and other epigenetic data. We will be using the data linked in the vignette which has been pre processed with ArchR. We will also install ArchR for future use. 


``` r
# Package requires devtools and BiocManager
if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")
# Then install Archr
devtools::install_github("GreenleafLab/ArchR", ref="master", repos = BiocManager::repositories())
# Lastly install the dependencies
library(ArchR)
ArchR::installExtraPackages()
```

The data linked is from [this](https://www.nature.com/articles/s41586-021-03209-8) article (@ziffra_single-cell_2021). I won't go into depth about the article just now. For now we are just going to collect the data and follow the vignette tutorial. 


``` r
### Load in the Data ###########################################################
  library(ArchR)
  downloadSampleData("vignette_data")
#> [1] "vignette_data"
  ATACMat <- Matrix::readMM("vignette_data/SamplePeakMat.mtx")
  peaks <- as(data.table::fread("vignette_data/SamplePeaks.txt", header = FALSE)$V1, "GRanges")

### Define Label Nodes #########################################################

  pathToLabels <- system.file("extdata", "SampleMarkers1.txt", package = "CellWalkR")
  labelGenes <- data.table::fread(pathToLabels)

# Check the labeling data. It has to have at least two columns
  head(labelGenes)
  
### Building a Network #########################################################
  
# Next we compute cell-to-cell similarity in order to build edges in the cell-to-cell proportion of the graph
  
  cellEdges <- computeCellSim(ATACMat)
  
# Check cellEdges 
  cellEdges[1:5,1:5]
  
### Computing Label-Cell Edges #################################################
  
# Now we need to define which genomic regions correspond to which genes. We’ll use hg38 with Entrez identifiers in this example, using full gene bodies
  regions <- getRegions(geneBody = TRUE, genome = "hg38", names = "Entrez")
# Check it
  head(regions)
# Now we map between this data and the peaks
  ATACGenePeak <- mapPeaksToGenes(labelGenes, ATACMat, peaks, regions)
  labelEdges <- computeLabelEdges(labelGenes, ATACMat, ATACGenePeak)
# Check it
  head(labelEdges)
  
### Tuning Label Edges #########################################################
  
# We now have cell-to-cell edges and label-to-cell edges, we don’t know how to correctly weight the two relative to each other. The tuneEdgeWeights method will run CellWalker across a range of possible parameters and compute cell homogeneity for each
  labelEdgesList <- list(labelEdges)
  
  edgeWeights <- tuneEdgeWeights(cellEdges, 
                              labelEdgesList, 
                              labelEdgeOpts = 10^seq(1,7,1), 
                              sampleDepth = 1000)
# Check it
  head(edgeWeights[order(edgeWeights$cellHomogeneity, decreasing = TRUE),])

### Making a cellWalk Object ###################################################

# Now we generate a cellWalk object with the above tuned edge weight parameter
  cellWalk <- walkCells(cellEdges, 
                     labelEdgesList, 
                     labelEdgeWeights = 1e+07)
  
### Adding Filters #############################################################

# We may have some bulk epigenetic data that can help filter down which peaks are relevant to our analysis. We can tune weights on each filter to determine how significant it is to our data. For our example we have H3K4me3 data which indicates active promoters. Thus we apply this filter permissively (setting filterOut=FALSE) and at the whole gene level (filterGene=TRUE) rather than just to overlapping peaks. We can make a new cellWalk object using this filter:
  
  # labelEdges <- computeLabelEdges(labelGenes, 
  #                              ATACMat, 
  #                              ATACGenePeak,
  #                              filters = filters, 
  #                              filterWeights = c(1),
  #                              filterOut = c(FALSE),
  #                              filterGene = c(TRUE),
  #                              regions = regions)
  # labelEdgesList <- list(labelEdges)
  # cellWalk <- walkCells(cellEdges, 
  #                    labelEdgesList, 
  #                    labelEdgeWeights = 1e+07)

### Downstream Analysis ########################################################

# Once we have a cellWalk object we can use it for downstream analysis
  
# The label threshold determines the minimum influence score a cell must get to be considered labeled
  cellWalk <- findUncertainLabels(cellWalk, labelThreshold = 0, plot = TRUE)

# We can also directly examine label similarity by considering label-to-label influence
  cellWalk <- clusterLabels(cellWalk,  plot = TRUE)
  
  cellWalk <- plotCells(cellWalk, labelThreshold = 0, seed = 1)
    
# It is also possible to plot how strongly a single label influences each cell in the embedding
  cellWalk <- plotCells(cellWalk, cellTypes = c("RG-div2"), seed = 1)
  
# Furthermore, to analyze rare cell types, it can be helpful to only plot a subset of of all labels
  cellWalk <- plotCells(cellWalk, cellTypes = c("RG-early","tRG","vRG"), labelThreshold = 0, seed = 1)
```

### What's Next

As my next steps I would like to keep trying to get SnapAtac to work and also try the Cellwalker package with another research to actually run an analysis. As of now my time is done but I will continue to work on this subject as I find it very Interesting but from now on it will have a page of it's own in my portfolio. 
I learned a great deal about what scRNA-seq is but I am still barely scratching the surface. Most of the things I come across are rather new and I need a lot of time to read up. 
