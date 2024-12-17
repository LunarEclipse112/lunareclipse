# Guerrilla Analytics {-}





While working together in groups using github or alone on ones own *in silico* interface it is of great importance to keep a consistent and organized structure to more easily find data or code. On one hand it is crucial to avoid confusion on version usage (v4_file instead of latestlateslatest_file) by having established how files and data will be named in a README.txt file and further explanation in a METADATA file. On the other hand it makes writing code to edit, analyse and plot data much easier because the path to data and files is fixed. Guerrilla analytics is all about reproducibility and allows for anyone to quickly understand what the files and data contain and helps analysts write easier code by not deepening the file locations. 

A short example of a set up of this type is shown below. I organized one of my courses in the guerrilla analytics format to better explain the structure. It is very easy to work with and I very much enjoy looking at a well organized project.


``` r
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

Although the course above is organized properly it has allot of missing items like missing code chunks due to running code and changes to data in Rmarkdown instead of individual scripts. Note that it also consists of 3 projects, not just one. This means that it has more depth in comparison to a single project, and as said before, more depth creates more chaos.  







