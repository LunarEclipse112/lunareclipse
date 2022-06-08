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

Although the course above is organized properly it has allot of missing items like missing code chunks due to running code and changes to data in Rmarkdown instead of individual scripts. Note that it also consists of 3 projects, not just one. This means that it has more depth in comparison to a single project, and as said before, more depth creates more chaos. It was run trough a linux server. In this next example we can see the structure of this project, which is my portfolio project. It is organized in the same structure format but on my own pc. This allows easier access compared to a server designed to learn and run by my learning institution. 
The path shown below is longer than necessary when working from a server or github project. 


```r
fs::dir_tree(here::here(""))
#> C:/Users/31642/Documents/Study/Vakken/Bioinformatica/DSBF2/Website/lunareclipse.github.io
#> +-- 01-intro.Rmd
#> +-- 01-intro_files
#> |   \-- figure-html
#> |       +-- unnamed-chunk-2-1.png
#> |       \-- unnamed-chunk-3-1.png
#> +-- 02-peer_revieuw.Rmd
#> +-- 02-peer_revieuw_files
#> |   \-- figure-html
#> |       \-- unnamed-chunk-4-1.png
#> +-- 03-Guerrilla.Rmd
#> +-- 04-looking_ahead.Rmd
#> +-- 05-projects.Rmd
#> +-- 06-CV.Rmd
#> +-- 07-sql.knit.md
#> +-- 07-sql_databases.Rmd
#> +-- 07-sql_databases_files
#> |   \-- figure-html
#> |       +-- unnamed-chunk-10-1.png
#> |       +-- unnamed-chunk-10-2.png
#> |       \-- unnamed-chunk-10-3.png
#> +-- 08-references.Rmd
#> +-- awesome-cv.cls
#> +-- bibliography_portfolio
#> |   +-- bibliography_portfolio.bib
#> |   \-- files
#> |       +-- 11
#> |       |   \-- Sathyanesan and Gallo - 2019 - Cerebellar contribution to locomotor behavior A n.pdf
#> |       +-- 13
#> |       |   \-- Dudel et al. - Monitoring trends and differences in COVID-19 case.pdf
#> |       +-- 15
#> |       |   \-- Delgado-Gallegos et al. - 2021 - Teaching Anxiety, Stress and Resilience During the.pdf
#> |       +-- 18
#> |       |   \-- www.noldus.com.html
#> |       +-- 3
#> |       |   \-- Vinueza Veloz et al. - 2012 - The effect of an mGluR5 inhibitor on procedural me.pdf
#> |       +-- 5
#> |       |   \-- Schonewille et al. - 2011 - Reevaluating the Role of LTD in Cerebellar Motor L.pdf
#> |       +-- 7
#> |       |   \-- Vinueza Veloz et al. - 2015 - Cerebellar control of gait and interlimb coordinat.pdf
#> |       \-- 9
#> |           \-- Sathyanesan et al. - 2018 - Neonatal brain injury causes cerebellar learning d.pdf
#> +-- book.bib
#> +-- code
#> |   \-- cv.html
#> +-- cv
#> |   \-- cv.pdf
#> +-- data
#> |   +-- baseline_excess_pclm_5.csv
#> |   +-- data_cv.R
#> |   +-- dengue_data.csv
#> |   +-- dengue_tidy.csv
#> |   +-- dengue_tidy.rds
#> |   +-- Dudel_et_al_CFR_Decomposition.xlsx
#> |   +-- Excel_spreadsheets_decomposition.xlsx
#> |   +-- flu_data.csv
#> |   +-- flu_tidy.csv
#> |   +-- flu_tidy.rds
#> |   +-- gapdat_tidy.csv
#> |   +-- gapdat_tidy.rds
#> |   \-- inputdata.csv
#> +-- fonts
#> |   +-- FontAwesome.ttf
#> |   +-- Roboto-Bold.ttf
#> |   +-- Roboto-BoldItalic.ttf
#> |   +-- Roboto-Italic.ttf
#> |   +-- Roboto-Light.ttf
#> |   +-- Roboto-LightItalic.ttf
#> |   +-- Roboto-Medium.ttf
#> |   +-- Roboto-MediumItalic.ttf
#> |   +-- Roboto-Regular.ttf
#> |   +-- Roboto-Thin.ttf
#> |   \-- Roboto-ThinItalic.ttf
#> +-- index.Rmd
#> +-- lunareclipse.github.io.log
#> +-- lunareclipse.github.io.rds
#> +-- lunareclipse.github.io.Rproj
#> +-- lunareclipse.github.io.tex
#> +-- packages.bib
#> +-- preamble.tex
#> +-- README.md
#> +-- render2c783334165a.rds
#> +-- render38f8996637d.rds
#> +-- render537810ea1c67.rds
#> +-- render77d072fa6f84.rds
#> +-- style.css
#> +-- _book
#> |   +-- 01-celegans.md
#> |   +-- 01-intro.md
#> |   +-- 01-intro_files
#> |   |   \-- figure-html
#> |   |       +-- unnamed-chunk-2-1.png
#> |   |       \-- unnamed-chunk-3-1.png
#> |   +-- 02-cross-refs.md
#> |   +-- 02-cross-refs_files
#> |   |   \-- figure-html
#> |   |       \-- nice-fig-1.png
#> |   +-- 02-peer_revieuw.md
#> |   +-- 02-peer_revieuw_files
#> |   |   \-- figure-html
#> |   |       \-- unnamed-chunk-4-1.png
#> |   +-- 03-Guerrilla.md
#> |   +-- 03-parts.md
#> |   +-- 04-citations.md
#> |   +-- 04-looking_ahead.md
#> |   +-- 05-blocks.md
#> |   +-- 05-projects.md
#> |   +-- 06-CV.md
#> |   +-- 06-references.md
#> |   +-- 06-share.md
#> |   +-- 07-references.md
#> |   +-- 07-sql_databases.md
#> |   +-- 07-sql_databases_files
#> |   |   \-- figure-html
#> |   |       +-- unnamed-chunk-10-1.png
#> |   |       +-- unnamed-chunk-10-2.png
#> |   |       \-- unnamed-chunk-10-3.png
#> |   +-- 08-references.md
#> |   +-- 404.html
#> |   +-- blocks.html
#> |   +-- cross.html
#> |   +-- cv
#> |   |   \-- cv.pdf
#> |   +-- cv.pdf
#> |   +-- example-analysis-c.-elegans-experiment.html
#> |   +-- footnotes-and-citations.html
#> |   +-- guerrilla-analytics.html
#> |   +-- hello-bookdown.html
#> |   +-- index.html
#> |   +-- index.md
#> |   +-- libs
#> |   |   +-- bootstrap-4.6.0
#> |   |   |   +-- bootstrap.bundle.min.js
#> |   |   |   +-- bootstrap.min.css
#> |   |   |   \-- fonts
#> |   |   |       \-- bootstrap
#> |   |   |           +-- glyphicons-halflings-regular.eot
#> |   |   |           +-- glyphicons-halflings-regular.svg
#> |   |   |           +-- glyphicons-halflings-regular.ttf
#> |   |   |           +-- glyphicons-halflings-regular.woff
#> |   |   |           \-- glyphicons-halflings-regular.woff2
#> |   |   +-- bs3compat-0.3.1
#> |   |   |   +-- bs3compat.js
#> |   |   |   +-- tabs.js
#> |   |   |   \-- transition.js
#> |   |   +-- bs4_book-1.0.0
#> |   |   |   +-- bs4_book.css
#> |   |   |   \-- bs4_book.js
#> |   |   \-- jquery-3.6.0
#> |   |       \-- jquery-3.6.0.min.js
#> |   +-- looking-ahead.html
#> |   +-- markdowns
#> |   |   \-- cv.pdf
#> |   +-- open-peer-review.html
#> |   +-- parts.html
#> |   +-- projects.html
#> |   +-- reference-keys.txt
#> |   +-- references-1.html
#> |   +-- references.html
#> |   +-- relational-databases.html
#> |   +-- resume.html
#> |   +-- search.json
#> |   +-- sharing-your-book.html
#> |   \-- style.css
#> +-- _bookdown.yml
#> +-- _bookdown_files
#> +-- _common.R
#> \-- _output.yml
```

Next we will be looking at the Metadata from the Portfolio project. Listed below is content of the README file to show more information about the files in the project. 


```r
read_file(here::here("README.md"))
#> [1] "# lunareclipse.github.io\r\n\r\nThis repository contains my portfolio. It is ment to showcase my skills in data analysis. My goal is to be able to present to a future employer what it is I can do and such this portfolio will change greatly over time. As of now I am very much in the beginning of my journey and looking for an internship to hown my skills in a certain direction. For me my interest lies especially in next generation sequencing. I have worked on some NGS projects trough my university and I very much like how it goes hand in hand with understanding the biology of organisms to better interpret the results. \r\nIn this project most of the coding is done in R, with a little bit of Bash, CSS, YML and HTML on the side."
```

