# Basic exercises: 3, 4, 5, 7, 9, 10, 13, 15, 22, 25, 26

# Exercise 3 - create a sequence of numbers (20 to 50), find the mean of numbers (20 to 60), sum of numbers from 51 to 91
s = seq(from=20, to=50)
mn = mean((seq(from=20, to=60)))
sm = sum((seq(from=51, to=91)))
print(paste('Sum:', sm, ', Mean:', mn))

# Exercise 4 - create a vector which contains 10 random integer values between -50 and +50
vect <- sample(-50:50, 10)
vect

# Exercise 5 - get the first 10 Fibonacci numbers
fibo = c(0, 1)
n = 10
for (i in 3:n){
  value <- fibo[i-2] + fibo[i-1]
  fibo <- append(fibo, value)
}
fibo

# Exercise 7 - print the numbers from 1 to 100 and print "Fizz" for multiples of 3, print "Buzz" for multiples of 5, "FizzBuzz" for both
for (i in seq(100)){
  print(i)
  if (i %% 3 == 0 & i %% 5 == 0) {
    print('FizzBuzz')
  } else if (i %% 5 == 0){
    print('Buzz')
  } else if (i %% 3 == 0){
    print('Fizz')
  }
}

# Exercise 9 - find the factors of a given number
num <- readline(prompt ='Introduce a number: ')
num <- as.numeric(num)
fact <- c()
for(i in 1:num) {
  if(num %% i == 0) {
    fact <- append(fact, i)
  }
} 
print(paste("Factors of ", num, "are:"))
print(fact)

# Exercise 10 - find the maximum and the minimum value of a given vector
vect <- c(1, 4, 7, 9, 12, 22, 111, -12, 6) 
print(min(vect))
print(max(vect))

# Exercise 13 - create a list of random numbers in normal distribution and count occurrences of each value
len <- 50
x <- rnorm(len)
hist(x)
x_list <- list(x)

# Exercise 15 - create three vectors numeric, character and logical. Display the content of the vectors and their type
vect1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
vect2 <- c('a', 'b', 'c', 'd', 'e', 'f')
vect3 <- c(TRUE, FALSE, TRUE, FALSE, TRUE, TRUE)
print('vect1')
print(vect1)
print(paste('vect1 type:', typeof(vect1)))
print('vect2')
print(vect2)
print(paste('vect2 type:', typeof(vect2)))
print('vect3')
print(vect3)
print(paste('vect3 type:', typeof(vect3)))

# Exercise 22 - create  bell curve of a random normal distribution
x <- rnorm(500)
barplot(x)

# Exercise 25 - create a Dataframe which contains details of 5 employees and display the details
df <- data.frame(name=c('Pete', 'John', 'Mary', 'Mike', 'Sue'), gender=c('M', 'M', 'F', 'M', 'F'), wage=c(12, 15, 22, 25, 33))
df

# Exercise 26 - create a Dataframe which contains details of 5 employees and display summary of the data
df <- data.frame(name=c('Pete', 'John', 'Mary', 'Mike', 'Sue'), gender=c('M', 'M', 'F', 'M', 'F'), wage=c(12, 15, 22, 25, 33))
summary(df)
