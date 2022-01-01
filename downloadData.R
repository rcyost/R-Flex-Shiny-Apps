

library(rdbnomics)



# get imf metadata
imf_datasets <- rdbnomics::rdb_datasets(provider_code = "IMF")

dataset = "WEO:2021-10"
dim = rdbnomics::rdb_dimensions(provider_code = "IMF", dataset_code = dataset)
countries = dim$IMF$`WEO:2021-10`$`weo-country`
series = dim$IMF$`WEO:2021-10`$`weo-subject`

write.csv(countries, "weoCountries.csv")



# in R you can get metadata from dbnomics easily
# but you can't in python ??
# but in python you can get an entire dataset by just providing a country mask
# but you can't in R
# so you get metadata from R and save
# and then query in python
# if someone reading this has a knows how to do this all in R please enlighten me


############################ I couldn't get anything below to work :/

string = ""

for (i in 1:nrow(series)){
  string = paste(string, series$`weo-subject`[i], sep=".")
}

string <- substring(string, 2)


rdbnomics::rdb_datasets(provider_code = "IMF")




rdbnomics::rdb(provider_code = "IMF", 
               dataset_code = "WEO:2021-04", 
               dimensions = '{"weo-country":["AND"]}')

# one of the tutorials uses the . as "all" for BOP but it does not work here????
rdbnomics::rdb(provider_code = "IMF", 
               dataset_code = "WEO:2021-04",
               mask="A..pcent_gdp")





