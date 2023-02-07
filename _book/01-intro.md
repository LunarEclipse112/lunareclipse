# Example analysis *C. Elegans* experiment





First we will look at a case analysis of a *C. elegans* plate experiment. The data for this experiment was kindly supplied by J. Louter (INT/ILC). After exposure to various different compounds and a certain incubation time *C. elegans* nematode offspring where counted to determine toxicity of the compounds. The data is supplied in a excel file [Data Link](https://github.com/DataScienceILC/tlsc-dsfb26v-20_workflows/raw/main/data/CE.LIQ.FLOW.062_Tidydata.xlsx).

While looking at the data a number of things popped up. The compound unit values aren't all the same. The values for the controls are listed as being 'pct', we will plot them in the same graph to see the comparison for nematode offspring between the treated and control groups. This wil allow us to make a guess at the efficacy of the compounds in question. S-medium and Ethanol are the controls in this study. Ethanol with a concentration of 1.5 pct is the positive control, Medium-S is the  negative control with a concentration of 0.0 pct and lastly Ethanol with a concentration of 0.5 pct is the control vehicle A. To better illustrate the position of the values in the graph a set amount of jitter is added, 0.1 in the width and none in height, just to pull apart the points for better visualization. All the y-axis values remain thus unchanged and seeing as the concentration values are the same within groups it should not disturb the data.   


<img src="01-intro_files/figure-html/unnamed-chunk-2-1.png" width="672" />

Looking at the graph we can estimate that there might be a correlation between less offspring being counted on trated colonies of *C. Elegans* with higher concentrations of Naphtalene, 2,6-diisopropylnaphthalene, decane and Ethanol. To continue and test our assumption the data will be normalized and plotted again using a min-max scaling. This will allow us to better look at the the different compounds compared to each other. 

<img src="01-intro_files/figure-html/unnamed-chunk-3-1.png" width="672" />

Based on the last graph we are able to say there might be a correlation between the higher dosage of the different compounds (not controls, except the positive control) and the reduced offspring in the different *C. elegans* populations counted.

