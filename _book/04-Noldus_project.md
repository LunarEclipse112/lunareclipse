# Projects {-}




## Noldus project {-}

With Noldus Inc. (@noauthor_noldus_nodate) and the University of Applied sciences Utrecht [(website HU)](https://www.hu.nl/) I worked in a team of 5 to create a shiny application to help analyse data acquired from one of their research products: The Erasmus Ladder. The Erasmus Ladder is a setup that consists of a horizontal ladder to determine differences in behavior of mice by recording steps made on a selection of sensors. Variations in the amount of steps made and the type of steps that are made by mice can be recorded very accurately which allows for statistical analysis to determine differences between groups. 

### The output {-}

Our application analyses data acquired from the Erasmus Ladder and plots exploratory and publication ready graphs together with statistical analysis for researchers to more easily interpret their results. One of the challenges in creating the application was figuring out what kind of data is interesting to researchers. By reading articles using the device and speaking to researchers in the field we made a selection of publication ready graph functions that read in data formatted by the Erasmus ladder. we also made a selection of exploratory graphs meant to help researches get an overview of their data by showing some basic information like the amount of mice used, the different groups of mice, etc. and some graphs that portray an overview of things like the different types of steps mice made of different groups. 

### Literature References {-}

As examples of what data is interesting for research purposes we looked at a selection of different articles. For us the most important criteria for articles was the use of the Erasmus ladder and we were mostly interested in how they interpreted the data from it. The type of graphs used and how they portrayed the data are very important for us to base decisions on what graphs we want our application to produce based on input data. One of the first graphs I found very interesting provides a clear visual on the variances of steps made by different groups of mice [@vinueza_veloz_cerebellar_2015]. In the graph it shows two different groups of mice, one with a Purkinje cell deficiency (Pcd) and one control group that make runs crossing the Erasmus ladder. As each step is recorded the type of steps is determined based on the distance traveled. On page 3517 (Fig. 3) of the article we can observe a difference in variation of the steps used which might be caused due to the Purkinje cell deficiency. 
Versions of step type graphs plotted against the session can also be found in research [@sathyanesan_cerebellar_2019; @sathyanesan_neonatal_2018]. The graphs depict a decrease in variation of steps that are used by the control groups in time. This might be caused by the mice learning to cross the bridge more efficiently. A different type of graph which looked at the reaction of mice to the different ques to guide the mice on and off the device. This research [@vinueza_veloz_effect_2012] gave us a fresh look at the data and helped guide our decisions to what data might be seen as relevant. 

We also looked at other types of cerebellum research [@schonewille_reevaluating_2011] and how they selected data to better answer research questions. Although mostly not very applicable in our project it did give some insight in how different data variables are important for different research groups. 
Using the Erasmus ladder it's difficult on a first glance to show the effects of cerebellum degradation. One starts to recognize it's not a change in patterns to other new patterns but the switch from a pattern to a chaotic portray of inputs. 

## The application

Sadly I can't show of the application or the code for the application. Although I am quite proud of what we managed to create, it's a prototype application that has been changed and updated by now and integrated in to other software and not owned by us. I hope I was able to give it some justice in my description of it.
