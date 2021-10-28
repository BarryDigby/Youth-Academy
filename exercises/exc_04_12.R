# load dataset
expr <- read.delim("https://raw.githubusercontent.com/BarryDigby/Youth-Academy/master/data/expr.txt", stringsAsFactors = TRUE, row.names = "bcr_patient_barcode")

# Inspect it if you need a reminder! 

# Pairs plot:
pairs(______, col=_____, lower.panel = NULL, cex = 1, pch = 20)
par(xpd = TRUE)
legend(x = 0.05, y = 0.4, cex = 1, legend = as.character(levels(expr[,1])), fill=unique(expr[,1]))
par(xpd = NA)