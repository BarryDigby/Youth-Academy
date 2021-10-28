# load data
expr <- read.delim("https://raw.githubusercontent.com/BarryDigby/Youth-Academy/master/data/expr.txt", stringsAsFactors = TRUE, row.names = "bcr_patient_barcode")

# Use parcoord() in the MASS package
MASS::parcoord(_______, col = _______, var.label = TRUE, lwd = ____)

# Add a legend
par(xpd = TRUE)
legend(x = 1.2, y = 1.175, cex = 1,
       legend = as.character(levels(expr[,1])),
       fill = unique(expr[,1]), horiz = TRUE)