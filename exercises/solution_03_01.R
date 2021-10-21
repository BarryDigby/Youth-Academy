# read in dataframe 
expr <- read.delim("https://raw.githubusercontent.com/BarryDigby/Youth-Academy/master/data/expr.txt", stringsAsFactors = TRUE, row.names = "bcr_patient_barcode")

# Inspect the dataframe using str(), summary(), head() etc.. 
str(expr)
summary(expr)
head(expr)