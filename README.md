# macroFlexboard

### Goal

Explore tools to build apps. This was the easiest to make so far imo.

A basic dashboard app in Rshiny [Flexboard](https://pkgs.rstudio.com/flexdashboard/).

Flexboard seems to work well for static pages especially if you have any experience with Rmd.

Super quick to spin up a simple app. It seems a good precursor to building something in Rshiny.

In R I used tidyverse and ggplot. In python just pandas.

### Data

Used dbnomics client to get IMF WEO data. (bless dbnomics for being a thing)

Couldn't get the dbnomics R client to download an entire WEO dataset for an economy.

Python was used as it downloaded an entire economy's dataset for a WEO vintage.

Though there wasn't a function to get metadata in python.

So the data collection process was janky(technical term) as it is in R then python.

Didn't feel the need to spend more of my life getting the dbnomics client to do what I wanted so this is the solution.

### Ways to improve this

- clean up data collection
- create aggregate series for groups (income class, regions)
- include other datasets, WEO seems to be very high level
- include some functionality to select between vintages
- have charts label with series become projections
- put in a docker container and host


![png](gdpPage.png)
![png](fiscalPage.png)
![png](monetaryPage.png)
![png](laborPage.png)




