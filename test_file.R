####### Commenitng ######
# this is how you comment in R.
# Commenting helps you define what your code does.
#It also helps others to understand your code.

# We will use this file to learn the basics of writing R code.

######## Operators ########
# Open RStudio, click on the “Console” pane,
# type 1+1 and press enter.
# R displays the result of the calculation.
# In this document, we will show such an interaction with R as below
1 + 1 # to run this code, place cursor on the line and press enter

# + is called an operator.
# R has the operators you would expect for for basic mathematics: + - * / ^.
# It also has operators that do more obscure things.

# * has higher precedence than +.
# We can use brackets if necessary ( ). Try
1+2*3 # and
(1+2)*3
# Can you tell what is the difference?

# We can compare with == < > <= >= !=.
# This produces a logical value, TRUE or FALSE.
# Note the double equals, ==, for equality comparison.
2 * 2 == 4

######## Variables #########
# A variable is a name for a value.
# We can create a new variable by assigning a value to it using =.
width = 5

# RStudio helpfully shows us the variable in the “Environment” pane.
# We can also print it by typing the name of the variable and hitting enter.
# In general, R will print to the console any object returned by a function or
# operation unless we assign it to a variable.
width

# We can also change a variable’s value by assigning it a new value:
width = 10
width

# Let's write more code to perform basic math calculations
# Save area in "area" variable
area = width * width

numOne = 1
numTwo = 2
numThree = numOne + numTwo

# We are assigning a "string" or text to a variable called
# myString. A variable stores an item (a string, a number, etc)
# in memory as an "object" for later use.
myString = "Hello, World!"
myString


######### Vectors ##########
# Let's create some more complicated but common objects
# a vector is a collection of items(e.g numbers, words, etc) with the same mode.
# We can make vectors with c( ), for example c(1,2,3).
# c means “combine”. R is obsesssed with vectors,
# in R even single numbers are vectors of length one.
# Many things that can be done with a single number can also be done with a vector.
# For example arithmetic can be done on vectors as it can be on single numbers.
myvec <- c(10,20,30,40,50)
myvec

# try each of these
myvec + 1
myvec * 5
myvec + myvec
c(60, myvec)
c(myvec, myvec)

# We will also encounter vectors of character strings, for example
c("hello","world")
items = c("spam", "eggs", "beans", "bacon", "sausage")

# ### **** Remember that all elements in a vector must be the same type

# Access elements of a vector with [ ],
# for example myvec[1] to get the first element.
# You can also assign to a specific element of a vector.
myvec[1]
myvec[2]
myvec[3:5] # we can specify a sequence with the colon : like this

# Can we use a vector to index another vector? Yes!
myind = c(4,3,2)
myvec[myind]

# Try
x = 1:10
x*x
plot(x, x*x) # This is called a function

######### Functions ########
# Functions are the things that do all the work for us in R:
# calculate, manipulate data, read and write to files, produce plots.
# R has many built in functions and we will also be loading more
# specialized functions from “packages”.
# We’ve already seen several functions: c( ), length( ), and plot( ).
# Let’s now have a look at sum( ).
# We called the function sum with the argument myvec, and it returned the value 135.
sum(myvec)

# You can ask for help about a function with "?"
?sum()
?length()

# Some functions take more than one argument.
# Let’s look at the function rep, which means “repeat”,
# and which can take a variety of different arguments.
# In the simplest case, it takes a value and the number
# of times to repeat that value.
?rep()
rep(x = 42, times = 10)
rep(x = c(1,2,3), times = 10)

# this is a built in function which prints its input
# (object in parentheses to the console)
print(myString)
mode(myString)

