#library(Metrics) 

# Create dataframe
#wh_df<-read.csv("../dat/Weight-Height data.csv", skip=1, header=TRUE)

# Test RMSE   
#res = rmse(wh_df$kg, wh_df$kg.1) 
#print(res)

library(Metrics) 

# Set local Directory
setwd("D:\\MyDocs\\CWU\\Fall2020\\Data Mining\\Lab1\\data-mining-master\\data-mining-master\\Lab1\\dat")

# Create dataframe array for the files
dataFiles <- lapply(Sys.glob("Weight-Height data_*.csv"),skip=1, header=TRUE, read.csv)
View(dataFiles)

res = vector()
r_times = vector()
# Test for General RMSE   
for(i in 1:length(dataFiles))
{
  startTime = Sys.time()
  res[i] = rmse(dataFiles[[i]][["kg"]], dataFiles[[i]][["kg.1"]])
  r_times[i] =  Sys.time() - startTime

}


print(res)
print(r_times)
