library(data.table)
CO2
# set Co2 as data table
CO2_dt <- CO2
setDT(CO2_dt)
class(CO2_dt)

# filter rows where uptake > 18 and conc >500, and drop the Plant column
CO2_dt[uptake>18 & conc>500, !"Plant"]

# show the mean uptake for each treatment
CO2_dt[, .(mean_uptake=mean(uptake)), by=Treatment]
