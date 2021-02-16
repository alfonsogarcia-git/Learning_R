## Vector exercises: 3, 6, 7, 8, 9, 10, 12, 13, 14, 16, 20, 23

# Exercise 3 - Appending values to empty vector
vect <- vector() # Empty vector
vect <- c() # Another way to create an empty vector
vect <- append(vect, c(6, 7, 8)) # appending values to vect
vect

# Exercise 6  - mean, sum and product of a vector
vect <- c(1, 4, 7, 9, 12, 22, 0)
print('Mean:')
print(mean(vect))
print('Sum:')
print(sum(vect))
print('Product:')
print(prod(vect))

# Exercise 7 - mean, sum and product of a vector excluding NANs
vect <- c(1, 4, 7, 9, 12, 22, NaN, NaN) 
mask <- !is.na(vect) # Mask that gives TRUE for non-NAN values
vect_non_nan <- vect[mask]
print('Mean:')
print(mean(vect_non_nan))
print('Sum:')
print(sum(vect_non_nan))
print('Product:')
print(prod(vect_non_nan))

# Exercise 8 - min and max of a vector
vect <- c(1, 4, 7, 9, 12, 22, 111, -12, 6) 
print(min(vect))
print(max(vect))

# Exercise 9 - sorting a vector
vect <- c(1, 4, 7, 9, 12, 22, 111, -12, 6) 
sort(vect) # default is in ascending order
sort(vect, decreasing=TRUE) # descending order

# Exercise 10 - check if vector contains specific element
vect <- c(1, 4, 7, 9, 12, 22, 111, -12, 6) 
elem <- 7
elem %in% vect # returns Boolean
match(elem ,vect) # returns the first position of elem in the vector

# Exercise 12 - Access last value of a vector
vect <- c(1, 4, 7, 9, 12, 22, 111, -12, 6) 
vect[length(vect)] # position length is the last value

# Exercise 13 - second highest value of a vector
vect <- c(1, 4, 7, 9, 12, 22, 111, -12, 6) 
# 2 ways to do it
sorted <- sort(vect)
sorted[length(sorted) - 1] # Second to last element in ascending sorted vector
sorted <- sort(vect, decreasing = TRUE)
sorted[2] # Second element in descending sorted vector

# Exercise 14 - Find the Nth highest value of a vector
vect <- c(1, 4, 7, 9, 12, 22, 111, -12, 6) 
n <- readline(prompt="Enter N: ") # Input from user
n <- as.integer(n) # Converting n to integer
sorted <- sort(vect, decreasing = TRUE)
print('Nth highest element:')
print(sorted[n]) # Nth element in sorted vector from highest to lowest

# Exercise 16 - Creating dataframe from vectors
df <- data.frame(vect, sort(vect),  sort(vect, decreasing = TRUE))
names(df) <- c('vect1', 'vect2', 'vect3')
df

# Exervise 20 - Reverse the order of a given vector
vect <- c(1, 4, 7, 9, 12, 22, 111, -12, 6) 
rev(vect)

# Exervise 23 - Convert 2 columns of a df to a vector
df = data.frame(nums = c(1, 2, 3, 4), lets = c("a", "b", "c", "d"))
result = setNames(df$nums, df$lets)
print(result)

setNames( 1:3, c("foo", "bar", "baz") )

