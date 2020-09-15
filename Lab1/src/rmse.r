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

#plotting graph
num_rows = c(100000, 200000, 300000, 400000, 500000, 600000, 700000, 800000, 900000, 1000000)
plot(num_rows, r_times,type = "o", xlab= "Number of Rows", ylab="Run Time(s)")
