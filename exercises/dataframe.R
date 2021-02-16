# Dataframe exercises: all of them

# Exercise 1 - create an empty dataframe
df <- data.frame()

# Exercise 2 - create a data frame from four given vectors
vect1 <- c(1, 2, 3, 4)
vect2 <- c(5, 6, 7, 8)
vect3 <- c('a', 'b', 'c', 'd')
vect4 <- c(TRUE, FALSE, TRUE, FALSE)
df <- data.frame(vect1, vect2, vect3, vect4)
df

# Exercise 3 - get the structure of a given data frame
str(df)

# Exercise 4 - get the statistical summary and nature of the data of a given data frame
summary(df)

# Exercise 5 - extract specific column from a data frame using column name
df$vect1
df[['vect1']] # Same thing

# Exercise 6 - extract first two rows from a given data frame
df[1:2,]

# Exercise 7 - extract 3rd and 4th rows with 1st and 3rd columns from a given data frame
df[c(3,4), c(1,3)]

# Exercise 8 -  add a new column in a given data frame
df['new column'] <- c(NaN, NaN, NULL, NULL)
df

# Exercise 9 - add new row(s) to an existing data frame
new_row <- data.frame(5, 9, 'e', TRUE, NaN)
names(new_row) <- names(df) # They must have the same column names
df <- rbind(df, new_row)

# Exercise 10 - drop column(s) by name from a given data frame
df[['new column']] <- NULL
df

# Exercise 11 - drop row(s) by number from a given data frame
# df[5,] <- NULL no funciona
df <- df[-5, ]
df

# Exercise 12 - sort a given data frame by multiple column(s)
df[with(df, order(vect3, vect4))]
sort(df$vect1, decreasing = TRUE) #single column sorting
df[with(df, sort(df$vect1, decreasing = TRUE))]
?with

# Exercise 13 - create inner, outer, left, right join(merge) from given two data frames
df1 <- data.frame(name=c('Pete', 'John', 'Mary', 'Mike', 'Sue'), id=c(1, 2, 3, 4, 5), wage=c(12, 15, 22, 25, 33))
df2 <- data.frame(name=c('Gabriel', 'Clara', 'Dio', 'Alfon', 'Pablo'), id=c(3, 4, 5, 6, 7), wage=c(50, 20, 20, 0, 200))
df1
df2
merge(x = df1, y = df2, by = "id", all.x = TRUE) # Left join
merge(x = df1, y = df2, by = "id", all.y = TRUE) # Rigt join
merge(x = df1, y = df2, by = "id", all = TRUE) # Outer join
merge(x = df1, y = df2, by = "id") # Inner join

# Exercise 14 - replace NA values with 3 in a given data frame
df <- data.frame(name=c('Pete', 'John', NaN, NaN, 'Sue'), id=c(NaN, 2, 3, 4, NaN), wage=c(12, NaN, NaN, 25, 33))
df[is.na.data.frame(df)] <- 3 # Only works with numeric columns
is.na.data.frame(df) # In the character column it is not recognizing NaNs as NaNs

# Exercise 15 - change a column name of a given data frame
df <- data.frame(name=c('Pete', 'John', NaN, NaN, 'Sue'), id=c(NaN, 2, 3, 4, NaN), wage=c(12, NaN, NaN, 25, 33))
names(df)[1] <- 'worker' # first column
df

# Exercise 16 - change more than one column name of a given data frame
df <- data.frame(name=c('Pete', 'John', NaN, NaN, 'Sue'), id=c(NaN, 2, 3, 4, NaN), wage=c(12, NaN, NaN, 25, 33))
names(df)[1:2] <- c('worker', 'ID')
colnames(df)[which(names(df) == "name")] <- "worker" # Same as line above for 1 column
df

# Exercise 17 - select some random rows from a given data frame
df <- data.frame(name=c('Pete', 'John', NaN, NaN, 'Sue'), id=c(NaN, 2, 3, 4, NaN), wage=c(12, NaN, NaN, 25, 33))
rows <- sample(1:nrow(df), 2)
df[rows,]

# Exercise 18 - reorder a given data frame by column name
df <- data.frame(name=c('Pete', 'John', NaN, NaN, 'Sue'), id=c(NaN, 2, 3, 4, NaN), wage=c(12, NaN, NaN, 25, 33))
data <- subset(df, select=c('name', 'wage', 'id'))
data <- df[c("name", "wage", "id")] # Same thing
data

# Exercise 19 - find row(s) in a first data frame that are not present in a second data frame
df1 <- data.frame(name=c('Pete', 'John', 'Mary', 'Mike', 'Sue'), id=c(1, 2, 3, 4, 5), wage=c(12, 15, 22, 25, 33))
df2 <- data.frame(name=c('Pete', 'John', 'Mary', 'Mike', 'Sue'), id=c(1, 2, 3, 12, 15), wage=c(12, 15, 22, 25, 33))
setdiff(df1, df2) # This delivers columns

# Exercise 20 -  find elements which are present in two given data frames
df1 <- data.frame(name=c('Pete', 'John', 'Mary', 'Mike', 'Sue'), id=c(1, 2, 3, 4, 5), wage=c(12, 15, 22, 25, 33))
df2 <- data.frame(name=c('Pete', 'Carlos', 'Paula', 'Maria', 'Carmen'), id=c(1, 2, 3, 12, 15), wage=c(12, 15, 22, 25, 0))
intersect(df1, df2) # delivers empty dataframe
setequal(df1, df2) # delivers false because they are not identical
intersect(df1$name, df2$name) # If you introduce column by column it works fine because it works with vectors

# Exercise 21 - find elements come only once that are common to both given data frames
union(df1$name, df2$name)

# Exercise 22 - save the information of a data frame in a file and display the information of the file
save(df, file='df.RData')
new_var <- load('df.RData')
new_var

# Exercise 23 - count the number of NA values in a data frame column
df <- data.frame(name=c('Pete', 'John', NaN, NaN, 'Sue'), id=c(NaN, 2, 3, 4, NaN), wage=c(12, NaN, NaN, 25, 33))
sum(is.na(df$id))

# Exercise 24 - create a df from two given vectors and display the duplicated elements and unique rows of the df
vect1 <- c(1, 2, 3, 4, 1)
vect2 <- c(1, 0, 3, 0, 1)
df <- data.frame(vect1, vect2)
duplicated(df) # An entire row has to be duplicated to deliver TRUE
unique(df) # The opposite of duplicated

# Exercise 25 - call airquality dataset. Check if it is a df. Order the entire df by the first and second column
typeof(airquality)
class(airquality)
is.data.frame(airquality)
order(airquality[,1]) # Gives order according to first row, can be used as mask
airquality[order(airquality[,1]),] # used as mask

# Exercise 26 - call airquality dataset. Remove the variables 'Solar.R' and 'Wind' and display the data frame
# Method 1 - using subset
df <- subset(airquality, select = -c(Solar.R, Wind))
# Method 2 - assigning column values to null
df <- airquality
df[c("Solar.R", "Wind")] <- list(NULL)
# Method 3 - using masks
df <- airquality
mask <- names(df) %in% c("Solar.R", "Wind")
df <- df[!mask]
df