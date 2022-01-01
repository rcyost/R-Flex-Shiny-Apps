

#%%

import pandas as pd
from dbnomics import fetch_series

# r seems to have saved this in some odd way
mcl=pd.read_csv(r'C:\Users\yosty\Desktop\Desktop_Folder\14 - git\RA_primer\shiny\weoCountries.csv',
encoding = "ISO-8859-1")


# loop over all economies from dbnomics imf weo metadata and query for weo data
for econ in mcl['weo-country']:

  try:
      dataframe = fetch_series(
          provider_code='IMF',
          dataset_code='WEO:2021-04',
          # max
          dimensions={
          "weo-country":[f"{econ}"]}
      )

      dataframe.to_csv(fr"C:\Users\yosty\Desktop\Desktop_Folder\14 - git\RA_primer\shiny\data\{econ}.csv")

  except:
    print(econ)



