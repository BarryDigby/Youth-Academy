# Remove the comment "#" in front of typeof() and print() in section 1, then run the code block. 
# Repeat for section 2. 

# Lets see what happens mixing data types in a vector. 
i <- 12

# 1. i holds a numeric, and 55 is itself numeric.
tester <- c(i, 55) 
#print(tester)
#typeof(tester)

# 2. let's add a character string.
tester_1 <- c(55, i, "epsilon") 
#print(tester_1)
#typeof(tester_1)