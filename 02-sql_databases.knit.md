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




