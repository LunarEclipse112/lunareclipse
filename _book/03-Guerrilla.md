# Guerrilla Analytics





While working together in groups using github or alone on ones own *in silico* interface it is of great importance to keep a consistent and organized structure to more easily find data or code. On one hand it is crucial to avoid confusion on version usage (v4_file instead of latestlateslatest_file) by having established how files and data will be named in a README.txt file and further explanation in a METADATA file. On the other hand it makes writing code to edit, analyse and plot data much easier because the path to data and files is fixed. Guerrilla analytics is all about reproducibility and allows for anyone to quickly understand what the files and data contain and helps analysts write easier code by not deepening the file locations. 

A short example of a set up of this type is shown below. I organized one of my courses in the guerrilla analytics format to better explain the structure. It is very easy to work with and I very much enjoy looking at a well organized project.


```r
# Using this command we can get the structure of our file organisation 
fs::dir_tree(here::here("daur2/"))

/home/1686589/daur2/
├── rna_seq_ipsc
│   ├── README.txt
│   ├── code
│   │   └── Input.R
│   ├── data
│   ├── rnaseq_ipsc.Rmd
│   └── rnaseq_ipsc.html
├── rnaseq_airway
│   ├── README.txt
│   ├── code
│   │   ├── input.R
│   │   └── namen.txt
│   ├── data
│   │   ├── airway_sampledata.csv
│   │   ├── bam
│   │   │   ├── SRR1039508.bam
│   │   │   ├── SRR1039508.bam.indel.vcf
│   │   │   ├── SRR1039508.bam.summary
│   │   │   ├── SRR1039509.bam
│   │   │   ├── SRR1039509.bam.indel.vcf
│   │   │   ├── SRR1039509.bam.summary
│   │   │   ├── SRR1039512.bam
│   │   │   ├── SRR1039512.bam.indel.vcf
│   │   │   ├── SRR1039512.bam.summary
│   │   │   ├── SRR1039513.bam
│   │   │   ├── SRR1039513.bam.indel.vcf
│   │   │   ├── SRR1039513.bam.summary
│   │   │   ├── SRR1039516.bam
│   │   │   ├── SRR1039516.bam.indel.vcf
│   │   │   ├── SRR1039516.bam.summary
│   │   │   ├── SRR1039517.bam
│   │   │   ├── SRR1039517.bam.indel.vcf
│   │   │   ├── SRR1039517.bam.summary
│   │   │   ├── SRR1039520.bam
│   │   │   ├── SRR1039520.bam.indel.vcf
│   │   │   ├── SRR1039520.bam.summary
│   │   │   ├── SRR1039521.bam
│   │   │   ├── SRR1039521.bam.indel.vcf
│   │   │   ├── SRR1039521.bam.summary
│   │   │   └── alignment_statistics.rds
│   │   ├── counts
│   │   │   └── read_counts.rds
│   │   ├── fastq
│   │   │   ├── SRR1039508_1.fastq.gz
│   │   │   ├── SRR1039508_2.fastq.gz
│   │   │   ├── SRR1039509_1.fastq.gz
│   │   │   ├── SRR1039509_2.fastq.gz
│   │   │   ├── SRR1039512_1.fastq.gz
│   │   │   ├── SRR1039512_2.fastq.gz
│   │   │   ├── SRR1039513.fastq.gz
│   │   │   ├── SRR1039513_1.fastq.gz
│   │   │   ├── SRR1039513_2.fastq.gz
│   │   │   ├── SRR1039516.fastq.gz
│   │   │   ├── SRR1039516_1.fastq.gz
│   │   │   ├── SRR1039516_2.fastq.gz
│   │   │   ├── SRR1039517_1.fastq.gz
│   │   │   ├── SRR1039517_2.fastq.gz
│   │   │   ├── SRR1039520.fastq.gz
│   │   │   ├── SRR1039520_1.fastq.gz
│   │   │   ├── SRR1039520_2.fastq.gz
│   │   │   ├── SRR1039521.fastq.gz
│   │   │   ├── SRR1039521_1.fastq.gz
│   │   │   ├── SRR1039521_2.fastq.gz
│   │   │   ├── fastq_dump_downloader.sh
│   │   │   ├── fastqc.sh
│   │   │   └── refgenome_downloader.sh
│   │   ├── fastqc_output
│   │   │   ├── SRR1039508_1_fastqc.html
│   │   │   ├── SRR1039508_1_fastqc.zip
│   │   │   ├── SRR1039508_2_fastqc.html
│   │   │   ├── SRR1039508_2_fastqc.zip
│   │   │   ├── SRR1039509_1_fastqc.html
│   │   │   ├── SRR1039509_1_fastqc.zip
│   │   │   ├── SRR1039509_2_fastqc.html
│   │   │   ├── SRR1039509_2_fastqc.zip
│   │   │   ├── SRR1039512_1_fastqc.html
│   │   │   ├── SRR1039512_1_fastqc.zip
│   │   │   ├── SRR1039512_2_fastqc.html
│   │   │   ├── SRR1039512_2_fastqc.zip
│   │   │   ├── SRR1039513_1_fastqc.html
│   │   │   ├── SRR1039513_1_fastqc.zip
│   │   │   ├── SRR1039513_2_fastqc.html
│   │   │   ├── SRR1039513_2_fastqc.zip
│   │   │   ├── SRR1039513_fastqc.html
│   │   │   ├── SRR1039513_fastqc.zip
│   │   │   ├── SRR1039516_1_fastqc.html
│   │   │   ├── SRR1039516_1_fastqc.zip
│   │   │   ├── SRR1039516_2_fastqc.html
│   │   │   ├── SRR1039516_2_fastqc.zip
│   │   │   ├── SRR1039516_fastqc.html
│   │   │   ├── SRR1039516_fastqc.zip
│   │   │   ├── SRR1039517_1_fastqc.html
│   │   │   ├── SRR1039517_1_fastqc.zip
│   │   │   ├── SRR1039517_2_fastqc.html
│   │   │   ├── SRR1039517_2_fastqc.zip
│   │   │   ├── SRR1039520_1_fastqc.html
│   │   │   ├── SRR1039520_1_fastqc.zip
│   │   │   ├── SRR1039520_2_fastqc.html
│   │   │   ├── SRR1039520_2_fastqc.zip
│   │   │   ├── SRR1039520_fastqc.html
│   │   │   ├── SRR1039520_fastqc.zip
│   │   │   ├── SRR1039521_1_fastqc.html
│   │   │   ├── SRR1039521_1_fastqc.zip
│   │   │   ├── SRR1039521_2_fastqc.html
│   │   │   ├── SRR1039521_2_fastqc.zip
│   │   │   ├── SRR1039521_fastqc.html
│   │   │   └── SRR1039521_fastqc.zip
│   │   ├── hg38_genome
│   │   │   └── GRCh38.primary_assembly.genome.fa
│   │   └── hg38_index
│   │       ├── hg38_index.00.b.array
│   │       ├── hg38_index.00.b.tab
│   │       ├── hg38_index.files
│   │       ├── hg38_index.log
│   │       ├── hg38_index.reads
│   │       ├── subread-index-sam-186134-meVx1N
│   │       └── subread-index-sam-193622-AYN0aX
│   ├── rna_seq.Rmd
│   └── rna_seq.html
└── rnaseq_onecut
    ├── README.txt
    ├── Rmarkdown
    │   ├── rnaseq_eind.Rmd
    │   ├── rnaseq_eind.html
    │   ├── rnaseq_eind.log
    │   ├── rnaseq_eind.tex
    │   ├── v1_Eindopdracht.Rmd
    │   └── v2_Eindopdracht.Rmd
    ├── code
    ├── data
    └── output
        ├── 6_volcano_plot-1.png
        ├── perbase_SRR7866699.png
        └── perseq_SRR7866699.png

```

Although the course above is organized properly it has allot of missing items like missing code chunks due to running code and changes to data in Rmarkdown instead of individual scripts. Note that it also consists of 3 projects, not just one. This means that it has more depth in comparison to a single project, and as said before, more depth creates more chaos. It was run trough a linux server. In this next example we can see the structure of this project, which is my portfolio project (Not the bookdown project of my portfolio witch is linked trough this website!). It is organized in the same structure format but on my own pc. This allows easier access compared to a server designed to learn and run by my learning institution. 
The path shown below is longer than necessary when working from a server or github project. 


```r
fs::dir_tree(here::here(""))

C:/Users/31642/Documents/Study/Vakken/Bioinformatica/DSBF2/dsbf2_workflows_portfolio/Portfolio
+-- bibliography_portfolio
|   +-- bibliography_portfolio.bib
|   \-- files
|       +-- 11
|       |   \-- Sathyanesan and Gallo - 2019 - Cerebellar contribution to locomotor behavior A n.pdf
|       +-- 13
|       |   \-- Dudel et al. - Monitoring trends and differences in COVID-19 case.pdf
|       +-- 15
|       |   \-- Delgado-Gallegos et al. - 2021 - Teaching Anxiety, Stress and Resilience During the.pdf
|       +-- 18
|       |   \-- www.noldus.com.html
|       +-- 3
|       |   \-- Vinueza Veloz et al. - 2012 - The effect of an mGluR5 inhibitor on procedural me.pdf
|       +-- 5
|       |   \-- Schonewille et al. - 2011 - Reevaluating the Role of LTD in Cerebellar Motor L.pdf
|       +-- 7
|       |   \-- Vinueza Veloz et al. - 2015 - Cerebellar control of gait and interlimb coordinat.pdf
|       \-- 9
|           \-- Sathyanesan et al. - 2018 - Neonatal brain injury causes cerebellar learning d.pdf
+-- code
|   +-- 00_functions.R
|   +-- 01_input.R
|   +-- 02_analysis.R
|   +-- 03_excess.R
|   +-- Fig_1.R
|   +-- guerrilla_tactics.R
|   +-- pdftopng.R
|   \-- Tests.R
+-- data
|   +-- baseline_excess_pclm_5.csv
|   +-- data_cv.R
|   +-- dengue_data.csv
|   +-- dengue_tidy.csv
|   +-- dengue_tidy.rds
|   +-- Dudel_et_al_CFR_Decomposition.xlsx
|   +-- Excel_spreadsheets_decomposition.xlsx
|   +-- flu_data.csv
|   +-- flu_tidy.csv
|   +-- flu_tidy.rds
|   +-- gapdat_tidy.csv
|   +-- gapdat_tidy.rds
|   \-- inputdata.csv
+-- output
|   +-- AppendixTab1.xlsx
|   +-- AppendixTab2.xlsx
|   +-- AppendixTab3.xlsx
|   +-- AppendixTab4.xlsx
|   +-- AppendixTab5.xlsx
|   +-- AppendixTab6.xlsx
|   +-- Fig_1.jpg
|   +-- Table2.xlsx
|   +-- Table3.xlsx
|   \-- thumbnail_IMG_7494.jpg
+-- Portfolio.Rproj
+-- README.txt
\-- Rmarkdowns
    +-- awesome-cv.cls
    +-- fonts
    |   +-- FontAwesome.ttf
    |   +-- Roboto-Bold.ttf
    |   +-- Roboto-BoldItalic.ttf
    |   +-- Roboto-Italic.ttf
    |   +-- Roboto-Light.ttf
    |   +-- Roboto-LightItalic.ttf
    |   +-- Roboto-Medium.ttf
    |   +-- Roboto-MediumItalic.ttf
    |   +-- Roboto-Regular.ttf
    |   +-- Roboto-Thin.ttf
    |   \-- Roboto-ThinItalic.ttf
    +-- portfolio_opdracht1.html
    +-- portfolio_opdracht1_1.html
    +-- portfolio_opdracht1_1.Rmd
    +-- portfolio_opdracht1_2.html
    +-- portfolio_opdracht1_2.Rmd
    +-- portfolio_opdracht2.html
    +-- Portfolio_opdracht2.Rmd
    +-- Portfolio_opdracht3.html
    +-- Portfolio_opdracht3_1.pdf
    +-- Portfolio_opdracht3_1.Rmd
    +-- Portfolio_opdracht3_2.html
    +-- Portfolio_opdracht3_2.Rmd
    +-- Portfolio_opdracht5.html
    +-- Portfolio_opdracht5.Rmd
    +-- Portfolio_opdracht7.html
    \-- Portfolio_opdracht7.Rmd
```

Next we will be looking at the README from the Portfolio project. Listed below is content of the README file to show more information about the files in the project. You can also just look at the README linked in the Github link. That one is a little bit easier to read. 


```r
read_file(here::here("README.md"))
#> [1] "# lunareclipse\r\n\r\nThis repository contains my portfolio. It is meant to showcase my skills in data analysis. My goal is to be able to present to a future employer what it is I can do and such this portfolio will change greatly over time. As of now I am very much in the beginning of my journey and looking for an internship to improve my skills in a certain direction. For me my interest lies especially in next generation sequencing. I have worked on some NGS projects trough my university and I very much like how it goes hand in hand with understanding the biology of organisms to better interpret the results. \r\n\r\nMaking this portfolio has been a great learning experience and I will be keeping this update regularly. I have plans to include a RNA-seq analysis, Metagenomics pipeline and to keep working on the scRNA-seq skills as I find it very interesting. I would have liked to have one pipeline finished by now (12-06-2022) for the SnapATAC2 package but sadly I haven't figured out how to install and run the package properly on my device so that stands at the front of my to do list. Also I would like to improve on the skills I already posses and will make the pages in this portfolio go more in depth on the different basic skills to better showcase what I can do.\r\n\r\nI hope you will enjoy reading this and thank you for your time!\r\n\r\nIn this project most of the coding is done in R, with a little bit of Bash, CSS, YML, SQL and HTML on the side.\r\n\r\nWebsite link [here](https://lunareclipse.netlify.app/index.html)"
```

