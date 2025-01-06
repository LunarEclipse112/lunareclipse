# Relational Databases {-}



Working with relational databases means in many cases having to communicate using SQL. To pull and store data is very important and here follows a small demonstration on how this can be done.  


At first we start by loading in the required data for this short analysis. We use data from the gapminder data set, part of the dslabs package. We will additionally merge this data set with two other data sets for some added complexity (flu_data & dengue_data). 
After loading in the data we need to process it to make it easier to work with in R. It will also make it allot easier to work with when we compare the data and load it in into DBeaver using SQL. 


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
-- In DBeaver we now make a new database to store the data
CREATE DATABASE fludata;

-- Next we connect to the database in Rstudio (not visible)

```




``` sql
-- Then in SQL we define the primary keys of the tables (Date and country)
alter table public.flu_data 
	add constraint PK_flu_data primary key (Date, country);
	
alter table public.dengue_data 
	add constraint PK_dengue_data primary key (Date, country);

alter table public.gapminer_data 
	add constraint PK_gapminder_data primary key (Date, country);

-- And we inspect the data from the table flu_data to check if all went well
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
####################### Merge the gapminder data ##############################
# Next we want to join the 3 data frames together based on the year and country columns
## flu data tidy:
  flu_data_tidy <- flu_data_tidy %>% separate(col = Date, into = c("year", "Month", "Day"), sep = "-", remove = FALSE)

## dengue data tidy:
  dengue_data_tidy <- dengue_data_tidy  %>% separate(col = Date, into = c("year", "Month", "Day"), sep ="-", remove = FALSE)

## Now we can add them together like glue
glue <- dengue_data_tidy %>% full_join(flu_data_tidy, by=c("year","country", "Day", "Month", "Date"))

## fix year variable
gapdata_tidy$year <- as.integer(gapdata_tidy$year)
glue$year <- as.integer(glue$year)

## Fully merge the data sets
merged_dat <- glue %>% full_join(gapdata_tidy, by=c("country", "year"))

## inspect new data set
#merged_dat

```

To finish this section we will plot a simple graph to show a bit about the gapminder data set. I chose to display the GDP according to World Bankdev. (gapminder data set) for a selection of countries in Europe from 1960 to 2016.


``` r
#################### Graphs #####################################################

# Now we have a dataframe with the data from all the 3 tables and we can make some exploratory graphs with it, I opted for a simple graph to compare the countries GDP's

## Graph showing the decline in infant mortality in bolivia
gdp_graph_europe <- gapdata_tidy %>% filter(region == "Western Europe") %>% 
  select(country, year, gdp, continent) %>%
  group_by(gdp) 

gdp_graph_europe %>% ggplot(aes(x = year, y = gdp, colour = country)) +
  theme_classic() +
  scale_color_paletteer_d("awtools::a_palette") +
  geom_line() +
  scale_x_continuous(breaks = round(seq(min(gdp_graph_europe$year), max(gdp_graph_europe$year), by = 10),1)) + 
  labs(title = "GDP of Western-European countries from 1960 to 2016",
       y= "GDP",
       x= "Time (year)")
```

<img src="02-sql_databases_files/figure-html/unnamed-chunk-10-1.png" width="672" />
