# List exercises: 1, 8, 10, 11, 12, 14

# Exercise 1 - create a list containing strings, numbers, vectors and a logical values
li <- list('a', 'b', 'c', 1, 2, 3, c(10, 11, 12), TRUE, FALSE)
li

# Exercise 8 - merge two given lists into one list
li1 <- list('a', 'b', 'c', 1, 2, 3, c(10, 11, 12), TRUE, FALSE)
li2 <- list('d', 'e', 'f', 4, 5, 6)
merged <- c(li1, li2)
merged

# Exercise 10 - create a list of dataframes and access each of those dataframes from the list
df1 <- data.frame(names=c('Pablo', 'Maria', 'Juan'), numbers=c(6, 9, 4))
df2 <- data.frame(colors=c('Red', 'Green', 'Blue'), code=c('R', 'G', 'B'))
li <- list(df1, df2)
li[[1]]
li[[2]]

# Exercise 11 - count number of objects in a given list
li <- list('a', 'b', 'c', 1, 2, 3, c(10, 11, 12), TRUE, FALSE)
length(li)

# Exercise 12 - convert a given dataframe to a list by rows
df <- data.frame(names=c('Pablo', 'Maria', 'Juan'), numbers=c(6, 9, 4))
li <- list() # Empty list
# Method 1
for (i in seq(nrow(df))){
  li[[i]] <-  df[i,]
}
# Method 2
new_list = split(df, seq(nrow(df)))

# Exercise 14 - assign NULL to a given list element
li <- list('a', 'b', 'c', 1, 2, 3, c(10, 11, 12), TRUE, FALSE)
n <- 3
li[n] = NULL # NULL eliminates the element from the list, list size decreases by one
li

# If we want to keep the list size intact and assign Null value:
li <- list('a', 'b', 'c', 1, 2, 3, c(10, 11, 12), TRUE, FALSE)
n <- 3
li[n] = list(NULL) # list(NULL) assigns NULL value to the element given
li