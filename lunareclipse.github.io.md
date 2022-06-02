--- 
title: "Portfolio"
author: "Lunar Eclipse"
date: "2022-06-02"
site: bookdown::bookdown_site
documentclass: book
bibliography: "./bibliography_portfolio/bibliography_portfolio.bib"
# cover-image: path to the social sharing image like images/cover.jpg
description: |
  This is my portfolio. Its also my first website hosted from github and netlify. I hope you enjoy!
biblio-style: apalike
csl: chicago-fullnote-bibliography.csl
---
--- 
title: "Portfolio"
author: "Lunar Eclipse"
date: "2022-06-02"
site: bookdown::bookdown_site
documentclass: book
bibliography: "./bibliography_portfolio/bibliography_portfolio.bib"
# cover-image: path to the social sharing image like images/cover.jpg
description: |
  This is my portfolio. Its also my first website hosted from github and netlify. I hope you enjoy!
biblio-style: apalike
csl: chicago-fullnote-bibliography.csl
---

# Welcome!

Hi! And welcome, this is my portfolio. It is a collection of different skills I posses and a way to show what I can do in a data analysis context. Each page contains a different group of skills and stands alone in its presentation. Also good to know is that this is of course, an ongoing process.

## About Me

I am a student of the university of applied sciences Utrecht. I have great passion for biology and data analysis. A work enviorment where I can implement both those interests is a dream job for me. With my biology background and data analysis knowledge I can be a bridge between lab analysts and data scientists. I am a transgender nonbinary individual, This means I go by they/them (die/diens of hen/hun). Usually this isn’t something I place too much importance on, I just live my life like anyone else but it might have some implications in the future regarding out of the blue surgeries. I don’t expect this to happen in the following year but just in case I do feel like my future employer should be informed about this.

<!--chapter:end:index.Rmd-->

# Example analysis *C. Elegans* experiment





First we will look at a case analysis of a *C. elegans* plate experiment. The data for this experiment was kindly supplied by J. Louter (INT/ILC). After exposure to various different compounds and a certain incubation time *C. elegans* nematode offspring where counted to determine toxicity of the compounds. The data is supplied in a excel file (link seen below). 

https://github.com/DataScienceILC/tlsc-dsfb26v-20_workflows/raw/main/data/CE.LIQ.FLOW.062_Tidydata.xlsx

While looking at the data a number of things popped up. The compound unit values aren't all the same. The values for the controls are listed as being 'pct', we will plot them in the same graph to see the comparison for nematode offspring between the treated and control groups. This wil allow us to make a guess at the efficacy of the compounds in question. S-medium and Ethanol are the controls in this study. Ethanol with a concentration of 1.5 pct is the positive control, Medium-S is the  negative control with a concentration of 0.0 pct and lastly Ethanol with a concentration of 0.5 pct is the control vehicle A. To better illustrate the position of the values in the graph a set amount of jitter is added, 0.5 in the width and none in height, just to pull apart the points for better visualization. All the y-axis values remain thus unchanged and seeing as the concentration values are the same within groups it should not disturb the data.   


<img src="01-intro_files/figure-html/unnamed-chunk-2-1.png" width="672" />

Looking at the graph we can estimate that there might be a correlation between less offspring being counted on trated colonies of *C. Elegans* with higher concentrations of Naphtalene, 2,6-diisopropylnaphthalene, decane and Ethanol. To continue and test our assumption the data will be normalized and plotted again using a min-max scaling. This will allow us to better look at the the different compounds compared to each other. 

<img src="01-intro_files/figure-html/unnamed-chunk-3-1.png" width="672" />

Based on the last graph we are able to say there might be a correlation between the higher dosage of the different compounds (not controls, except the positive control) and the reduced offspring in the different *C. elegans* populations counted.


<!--chapter:end:01-intro.Rmd-->


# Cross-references {#cross}

Placeholder


## Chapters and sub-chapters
## Captioned figures and tables

<!--chapter:end:02-cross-refs.Rmd-->

# Parts

You can add parts to organize one or more book chapters together. Parts can be inserted at the top of an .Rmd file, before the first-level chapter heading in that same file. 

Add a numbered part: `# (PART) Act one {-}` (followed by `# A chapter`)

Add an unnumbered part: `# (PART\*) Act one {-}` (followed by `# A chapter`)

Add an appendix as a special kind of un-numbered part: `# (APPENDIX) Other stuff {-}` (followed by `# A chapter`). Chapters in an appendix are prepended with letters instead of numbers.




<!--chapter:end:03-parts.Rmd-->

# Footnotes and citations 

## Footnotes

Footnotes are put inside the square brackets after a caret `^[]`. Like this one ^[This is a footnote.]. 

## Citations

Reference items in your bibliography file(s) using `@key`.

For example, we are using the **bookdown** package [@R-bookdown] (check out the last code chunk in index.Rmd to see how this citation key was added) in this sample book, which was built on top of R Markdown and **knitr** [@xie2015] (this citation was added manually in an external file book.bib). 
Note that the `.bib` files need to be listed in the index.Rmd with the YAML `bibliography` key.


The `bs4_book` theme makes footnotes appear inline when you click on them. In this example book, we added `csl: chicago-fullnote-bibliography.csl` to the `index.Rmd` YAML, and include the `.csl` file. To download a new style, we recommend: https://www.zotero.org/styles/


The RStudio Visual Markdown Editor can also make it easier to insert citations: <https://rstudio.github.io/visual-markdown-editing/#/citations>

<!--chapter:end:04-citations.Rmd-->


# Blocks

Placeholder


## Equations
## Theorems and proofs
## Callout blocks

<!--chapter:end:05-blocks.Rmd-->


# Sharing your book

Placeholder


## Publishing
## 404 pages
## Metadata for sharing

<!--chapter:end:06-share.Rmd-->


# References {-}


<!--chapter:end:07-references.Rmd-->

