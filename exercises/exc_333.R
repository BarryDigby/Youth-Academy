data("ToothGrowth")

# we want to compare OJ vs VC 
comp <- list(c("OJ", "VC"))

# make plot 
ggboxplot(ToothGrowth, 
          x = "supp", 
          y = "len", 
          color = "supp", 
          palette = "npg", 
          add = "jitter") + stat_compare_means(comparisons = comp)