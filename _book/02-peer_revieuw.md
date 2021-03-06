# Open Peer Review 




In the context of reproducibility it is very wise to ensure quality of products is kept high by analyzing and reviewing other peoples work. In due time recognizing bad transparency will become easier and ones own work will improve.

### Teaching anxiety, stress and resilience during the COVID-19 pandemic

The first article selected for reviewing is about the teaching anxiety, stress and resilience during the COVID-19 pandemic [@delgado-gallegos_teaching_2021]. 

It is an article that looks at the psychological changes among teachers that have changed from a school attending curriculum to a virtual classroom model following restrictions on face to face meeting due to the pandemic quarantine. 

We will start by scoring the article based on a rubric which determines reproducibility and will allow for a quick overview. 


|Transparency Criteria       |Definition                                                                                                                                                                                                                                                              |Response Type       |Score                                                                                                                                                                                                                                                |
|:---------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|Study Purpose               |A concise statement in the introduction of the article, often in the last paragraph, that establishes the reason the research was conducted. Also called the study objective                                                                                            |Binary              |TRUE                                                                                                                                                                                                                                                 |
|Data Availability Statement |A statement, in an individual section offset from the main body of text, that explains how or if one can access a study???s data. The title of the section may vary, but it must explicitly mention data; it is therefore distinct from a supplementary materials section |Binary              |TRUE                                                                                                                                                                                                                                                 |
|Data Location               |Where the article???s data can be accessed, either raw or processed                                                                                                                                                                                                       |Found Value         |TRUE. All data can be downloaded from the article linked in the Data availability Statement                                                                                                                                                          |
|Study Location              |Author has stated in the methods section where the study took place or the data???s country/region of origin                                                                                                                                                              |Binary; Found Value |TRUE. The study origin is Mexico but there isn't a clear location of the study location mentioned in the first paragraph of the Materials an Methods section of the article but it can be found under Author information                             |
|Author Review               |The professionalism of the contact information that the author has provided in the manuscript                                                                                                                                                                           |Found Value         |TRUE. Contact info can be found under Author information                                                                                                                                                                                             |
|Ethics Statement            |A statement within the manuscript indicating any ethical concerns, including the presence of sensitive data                                                                                                                                                             |Binary              |TRUE                                                                                                                                                                                                                                                 |
|Funding Statement           |A statement within the manuscript indicating whether or not the authors received funding for their research                                                                                                                                                             |Binary              |TRUE. The research was conducted in the absence of any commercial or financial relationships                                                                                                                                                         |
|Code Availability           |Authors have shared access to the most updated code that they used in their study, including code used for analysis                                                                                                                                                     |Binary              |FALSE. Although the analysis methods are listed in the files there is no code listed with which the analysis was done. I suspect SPSS was used and the results from there where simply copied in to Excel to create the figures shown in the results |

Reviewing the rubric shows us the article is very professional overall. Their data supplied allows for later testing for reproducibility. Although to actually check for reproducibility we will need to write code to run the same analysis they did and check for any variances in the results, Because of this we can't fully conclude the article in question is fully reproducible. If code was supplied this article would have been a beautiful example of reproducible research. 

### Monitoring trends and differences in COVID-19 case-fatality rates using decomposition methods: Contributions of age structure and age-specific fatality

Now we are going to look at the code from an article that does qualify for reproducible research. The next paper is about Monitoring trends and differences in COVID-19 case-fatality rates using decomposition methods: Contributions of age structure and age-specific fatality [@dudel_monitoring_nodate].

First lets score the article in question using the same rubric as before:

|Transparency Criteria       |Definition                                                                                                                                                                                                                                                              |Response Type       |Score                                                                                       |
|:---------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------|:-------------------------------------------------------------------------------------------|
|Study Purpose               |A concise statement in the introduction of the article, often in the last paragraph, that establishes the reason the research was conducted. Also called the study objective                                                                                            |Binary              |TRUE. Although not the last paragraph                                                       |
|Data Availability Statement |A statement, in an individual section offset from the main body of text, that explains how or if one can access a study???s data. The title of the section may vary, but it must explicitly mention data; it is therefore distinct from a supplementary materials section |Binary              |TRUE                                                                                        |
|Data Location               |Where the article???s data can be accessed, either raw or processed                                                                                                                                                                                                       |Found Value         |TRUE. All data can be downloaded from the article linked in the Data availability Statement |
|Study Location              |Author has stated in the methods section where the study took place or the data???s country/region of origin                                                                                                                                                              |Binary; Found Value |TRUE                                                                                        |
|Author Review               |The professionalism of the contact information that the author has provided in the manuscript                                                                                                                                                                           |Found Value         |TRUE. Contact info can be found on the front page                                           |
|Ethics Statement            |A statement within the manuscript indicating any ethical concerns, including the presence of sensitive data                                                                                                                                                             |Binary              |FALSE                                                                                       |
|Funding Statement           |A statement within the manuscript indicating whether or not the authors received funding for their research                                                                                                                                                             |Binary              |FALSE                                                                                       |
|Code Availability           |Authors have shared access to the most updated code that they used in their study, including code used for analysis                                                                                                                                                     |Binary              |TRUE                                                                                        |

What sets this article apart from the previous one is the possibility to look at the code used to produce the results from the raw data. All the raw data links and exact code is supplied with the article and thus allow for an *easy* reproduction of the research done. It is important to note however that the article doesn't score perfectly on the rubric as seen above.

The code is found under the R file name and is distributed based on the function of the code in a few different scripts. The scripts are easy to read and very clear on the function. Every section has well defined borders and has short but clear comments on what the purpose of the chunk is. I would rate this code a 4/5 on first inspection. The only reason I don't give it a full score is personal preference. I would prefer the different scripts to be simply in one script that is easy to run instead of reloading the data over and over again and having to change it every time, but that's just me.

The first script (00_functions.R) defines a few custom functions: one to summarises some data and another function to compare case fatality rates and the age distribution between two groups. 
The second code file (01_input.R) loads in the raw data, adds a column (i see a mutate() function being used), filters it and transfers it to a new .csv file for later usage.
The third script (02_analysis.R) modifies the data a bit more and runs some basic analysis on it. 

I won't go in to more detail about the other scripts as analysis of the research is not the purpose of this open peer review fragment. I will however try to reproduce a small portion of it in the following segment. Any changes to the code will be recorded as comments. 


```r
### Packages ##################################################################

  library(tidyverse)
  library(ggrepel)
  library(scales)

### Load data #################################################################

  # Load data
  db_gh <- read_csv(here::here("./data/inputdata.csv"))
  ##### Small change to the location of the file so i can run it properly

### Aggregate data ############################################################

  # Filter date
  db_gh$Date <- as.Date(db_gh$Date,"%d.%m.%y")
  db_gh2 <- db_gh %>% filter(Date<=as.Date("30.06.2020","%d.%m.%y"))
  
  # Set New York as "country" (easier handling)
  db_gh2$Country[db_gh2$Country=="USA" & db_gh2$Region == "NYC"] <- "NYC"
  
  # Sum data over age groups
  db_gh2 <- db_gh2 %>% 
    filter(!Country %in% c("China","USA","South Korea") & Sex == "b") %>% 
    group_by(Country, Code,Date) %>% 
    summarise(Cases = sum(Cases),
              Deaths = sum(Deaths))

  # Exclude bolletino 
  db_gh2 <- db_gh2 %>%
    filter(str_sub(Code, 1, 5) != "ITbol")
  
  # Sort by date
  db_gh2 <- db_gh2 %>% group_by(Country) %>% arrange(Date)
  
  # Smooth reporting issues cases
  for(country in unique(db_gh2$Country)) {
    
    days <- db_gh2$Date[db_gh2$Country==country]
    
    for(day in 2:length(days)) {
      current <- db_gh2$Cases[db_gh2$Country==country & db_gh2$Date==days[day]]
      previous <- db_gh2$Cases[db_gh2$Country==country & db_gh2$Date==days[day-1]]
      
      if(current<previous) db_gh2$Cases[db_gh2$Country==country & db_gh2$Date==days[day]] <- previous
      
    }
    
  }

  # Smooth reporting issues deaths
  for(country in unique(db_gh2$Country)) {
    
    days <- db_gh2$Date[db_gh2$Country==country]
    
    for(day in 2:length(days)) {
      current <- db_gh2$Deaths[db_gh2$Country==country & db_gh2$Date==days[day]]
      previous <- db_gh2$Deaths[db_gh2$Country==country & db_gh2$Date==days[day-1]]
      
      if(current<previous) db_gh2$Deaths[db_gh2$Country==country & db_gh2$Date==days[day]] <- previous
      
    }
    
  }
  
### Plot settings #############################################################

  # Set colors
  col_country <- c("Germany" = "black",
                   "Italy" = "#2ca25f",
                   "NYC"="#f0027f",
                   "Spain"="#beaed4",
                   "South Korea"="#fdc086")#,
                   #"USA"="#386cb0")
  
  cols <- c("black",
            "#2ca25f",
            "#f0027f",
            "#beaed4",
            "#fdc086")#,
            #"#386cb0")
  
  
  # Axis
  labs <- db_gh2 %>%
    group_by(Country) %>% 
    filter(Cases == max(Cases)) %>% 
    mutate(Cases = Cases + 3000)
  
  # Including all reports
  tx <- 6
  lim_x <- 240000

### Plot ######################################################################

  db_gh2 %>% 
    ggplot(aes(Cases, Deaths, col = Country))+
    geom_line(size = 1, alpha = .9)+
    scale_x_continuous(expand = c(0,0), breaks = seq(0, 300000, 50000), limits = c(0, lim_x + 30000), labels = comma)+
    scale_y_continuous(expand = c(0,0), breaks = seq(0, 40000, 5000), limits = c(0, 40000), labels = comma)+
    annotate("segment", x = 0, y = 0, xend = lim_x, yend = lim_x * .02, colour = "grey40", size = .5, alpha = .3, linetype = 2)+
    annotate("segment", x = 0, y = 0, xend = lim_x, yend = lim_x * .05, colour = "grey40", size = .5, alpha = .3, linetype = 2)+
    annotate("segment", x = 0, y = 0, xend = lim_x, yend = lim_x * .10, colour = "grey40", size = .5, alpha = .3, linetype = 2)+
    annotate("segment", x = 0, y = 0, xend = lim_x, yend = lim_x * .15, colour = "grey40", size = .5, alpha = .3, linetype = 2)+
    annotate("text", label = "2% CFR", x = lim_x + 1000, y = lim_x * .02,
             color="grey30", size = tx * .3, alpha = .6, hjust = 0, lineheight = .8) +
    annotate("text", label = "5% CFR", x = lim_x + 1000, y = lim_x * .05,
             color="grey30", size = tx * .3, alpha = .6, hjust = 0, lineheight = .8) +
    annotate("text", label = "10% CFR", x = lim_x + 1000, y = lim_x * .10,
             color="grey30", size = tx * .3, alpha = .6, hjust = 0, lineheight = .8) +
    annotate("text", label = "15% CFR", x = lim_x + 1000, y = lim_x * .15,
             color="grey30", size = tx * .3, alpha = .6, hjust = 0, lineheight = .8) +
    scale_colour_manual(values = cols)+
    geom_text(data = labs, aes(Cases, Deaths, label = Country),
              size = tx * .35, hjust = 0, fontface = "bold") +
    theme_classic()+
    labs(x = "Cases", 
         y = "Deaths")+
    theme(
      panel.grid.minor = element_blank(),
      legend.position = "none",
      plot.margin = margin(5,5,5,5,"mm"),
      axis.text.x = element_text(size = tx),
      axis.text.y = element_text(size = tx),
      axis.title.x = element_text(size = tx + 1),
      axis.title.y = element_text(size = tx + 1)
    )
```

<img src="02-peer_revieuw_files/figure-html/unnamed-chunk-4-1.png" width="672" />

After looking at the code and plotting the first figure I can conclude the following. The code supplied is beautifully made and with only a very small change in file location it runs perfectly. This is what one means with reproducible research data. 
I score the code of this research paper a 5 out of 5 for ease of use and it does exactly what it is supposed to without noise in between. 
