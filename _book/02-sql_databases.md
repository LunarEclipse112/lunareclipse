# Relational Databases {-}



Working with relational databases means in many cases having to communicate using SQL. To pull and store data is very important and here follows a small demonstration on how this can be done.  


At first we start by loading in the required data for this short analysis. We use data from gapminder, a data set from the dslabs package and we use the dengue and flu data sets. 
After loading in the data we need to make it tidy to make it easier to work with in R. It will also make it allot easier to work with when we compare the data and load it in into DBeaver using SQL. 


``` r
############ Load in Data ##############################################
## Gapminder data from the dslabs package
  gapdat <- gapminder
  gapdata_tidy <- gapminder
## Dengue en flu data 
  dengue_data <- read_csv(here::here("data/dengue_data.csv"), skip = 10)
  flu_data <- read_csv(here::here("data/flu_data.csv"), skip = 10)
########################################################################
```



``` r
############################## Tidy Data ################################

## Gapminder data looks very tidy so no changes there except for the year column, that needs to become Date
  gapdata_tidy$year <- as.character(gapdata_tidy$year)
  colnames(gapdat) <- c("country", "Date", "infant_mortality", "life_expectancy", "fertility", "population", "gdp", "continent", "region")

## flu data tidy:
  flu_data_tidy <- flu_data %>% pivot_longer(cols = -c(Date),
                                             names_to = "country",
                                             values_to = "count_cases") 
  ## dengue data tidy:
  dengue_data_tidy <- dengue_data %>% pivot_longer(cols = -c(Date),
                                             names_to = "country",
                                             values_to = "values") 

```


``` r
########################### Export the Data ############################

## Now we are going to write off the tidy data sets as csv and rds to export them later into the database
  write_csv(gapdat_tidy, path = here::here("data/gapdat_tidy.csv"))
  write_csv(flu_data_tidy, path = here::here("data/flu_tidy.csv"))
  write_csv(dengue_data_tidy, path = here::here("data/dengue_tidy.csv"))
  
  write_rds(gapdat_tidy, path = here::here("data/gapdat_tidy.rds"))
  write_rds(flu_data_tidy, path = here::here("data/flu_tidy.rds"))
  write_rds(dengue_data_tidy, path = here::here("data/dengue_tidy.rds"))

  
```


``` sql
## In DBeaver we now make a new database to store the data
CREATE DATABASE fludata;

```




``` sql
## Then in SQL we define the primary keys of the tables (Date and country)
alter table public.flu_data 
	add constraint PK_flu_data primary key (Date, country);
	
alter table public.dengue_data 
	add constraint PK_dengue_data primary key (Date, country);

alter table public.gapminer_data 
	add constraint PK_gapminder_data primary key (Date, country);

## And we inspect the data from the table flu_data to check if all went well
select * from flu_data;

```


``` r
######################## Inspect the Data ######################################
## Now that the data has been stored in the database we can inspect it in R using the connection made

# Shows the tables
dbListTables(con)

# Shows the table of gaminder_data
dbGetQuery(con, 'SELECT * FROM gapminder_data')
```


``` r
####################### Modify the gapminder data ##############################
# Next we want to join the 3 data frames together based on the year and country columns
## flu data tidy:
  flu_data_tidy <- flu_data_tidy %>% separate(col = Date, into = c("year", "Month", "Day"), sep = "-")
## dengue data tidy:
  dengue_data_tidy <- dengue_data_tidy  %>% separate(col = Date, into = c("year", "Month", "Day"), sep ="-")
    
sic <- dengue_data_tidy %>% full_join(flu_data_tidy, by=c("year","country", "Day", "Month"))

merged_dat <- sic %>% full_join(gapdata_tidy, by=c("country", "year"))
```

To finish we will plot a few simple graphs to show a bit about the data that was merged.


``` r
#################### Graphs #####################################################

# Now we have a dataframe with the data from all the 3 tables and we can make some exploratory graphs with it 

## Graph showing the decline in infant mortality in bolivia
boliviagraph_im <- merged_dat %>% filter(country == "Bolivia" & year == 2003:2015) %>%
  group_by(year, infant_mortality) %>% summarise(mean = mean(infant_mortality))

boliviagraph_im$year <- as.double(boliviagraph_im$year)

boliviagraph_im %>% ggplot(aes(x = year, y = infant_mortality)) +
  theme_classic() +
  geom_line(aes()) +
  geom_point() +
  xlim(2003, 2015) +
  labs(title = "Infant mortality rate due to dengue in Bolivia from 2003 to 2015",
       y= "Infant deaths (per 1000 deaths)",
       x= "Time (Year)")

## look at dengue data specifically and let's make a some connections between data from bolia in the following graphs, see what we can learn from the data

merged_dat %>% filter(country == "Bolivia" & year == 2003:2015) %>% 
  group_by(year, infant_mortality) %>% summarise(mean = mean(infant_mortality, na.rm = TRUE), 
                                                 sdev = sd(infant_mortality, na.rm = TRUE)) %>%
  ggplot(aes(x = year, y = infant_mortality)) +
  theme_classic() +
  geom_line(aes()) +
#  geom_bar(stat = "identity", colour = "white") +
#  geom_errorbar(aes(ymin = mean-sdev, ymax = mean+sdev), width = .3) +
#  scale_fill_manual(values=c("#999999", "#E69F00")) +
  labs(title = "Infant mortality rate in Bolivia from 2003 to 2015",
       y= "Infant deaths (per 1000 deaths)",
       x= "Time (Year)")

## Graph of the most populated countries in 1998
merged_dat %>% select(population, country, year) %>% filter(year == 1998 & population >= 70000000) %>%
  ggplot(aes(x = country, y = population)) +
  geom_bar(stat = "identity") +
  labs(title = "Most populated countries in 1998",
       subtitle = "Limiting values at below 70M inhabitants",
       x = "Country Name",
       y = "Population")

## Gdp in asian countries in 1990
merged_dat %>% select(gdp, continent, year, country) %>% filter(year == 1990 & continent == "Asia") %>% arrange(desc(gdp)) %>%
  ggplot(aes(x = continent, y = gdp, fill = country)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "GDP of Asian countries in 1990",
       x = "Country in Asia",
       y = "GDP")

```
