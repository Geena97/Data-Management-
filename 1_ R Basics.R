#><>><>><>><>><>><>><>><>><>><>><>><>><>><>><>><>><>><>><>><>><>><>><>><>><>><>><>
##################################################################################
########################## R Basics #######################################
##################################################################################
#><>><>><>><>><>><>><>><>><>><>><>><>><>><>><>><>><>><>><>><>><>><>><>><>><>><>><>
# © Grea Groenewald 2021

#************************
##*** Basic Commands ****
#************************

# '*' means on keyboard, not r syntax/commands 

#	              # Edits out comments
#* esc 	          # To interrupt a command
#??topic	      # Use to search internet for specific topics
?hist()    
#?command         # Help to explain how to use certain commands
?hist             # e.g. ?hist gives the info for histograms
#* <-	              # assigning variables, can also use =
#* =    
#* ==               # Use double == when assigning variables to categories
mode(var)	        # Returns object type e.g. numeric, character. 'var' stands for name of variable we are looking at.
ls()	            # Lists the variables
rm(var)	          # Remove variables from workspace
rm(list=ls())	    # Clears workspace
#* ctrl l         # Clears the console
as.character()    # Changes the mode from a numeric to a character, put name of var between brackets
as.factor()	      # Making a variable categorical 
as.numeric()      # Making a variable numeric
round(X, n)	      # Rounds the data to n decimal places ('X' is a value)
data.frame(X, Y)	# Creates a data set with columns for vectors X and Y ('X' and "Y' are sets of data)
subset(dat,X<0.5)	# Creates a subset of data from the original data for given X

#***************************************
#* Making month a categorical variable *
#***************************************
dat$fMonth = as.factor(dat$Month)

#***************************************
#********** Defining variables *********
#***************************************
welcome = "hello"	#assigns hello to welcome
welcome
x <- 3 + 4	# assigning a number to x
x
x = 3 + 4	  # can use = to substitute <-
x
y <- 3
y
z <- x + y	# using x and y to define z
z

## R is case sensitive
Z <- z*100
Z

## R does not like spaces use . or _
my name <- "Grea"    #R does not like the space replace with .
my.name <- "Grea"
my.name

              #*****
#***************************
#**** Math Calculations ****
#***************************
a = 10
b = 6
a+b	      # Plus
a-b	      # Minus
a*b	      # Multiply (x)
a/b	      # Divide
a^2	    # Square (2)
a^b	    # To the power (b)
sqrt(a)	# Square root  (√)
exp(a)	# Exponential (℮^a)
log(a)	# Natural log (ln(a)) or
log10(a)	            # Log base 10 (log (a)) or
log(a, base = 10)	    # Log base 10 (log (a))
              
            #*****

#***************************
#********** Vectors ********
#***************************

X <- c(10,20,30,40,50,60,70,80,90,100) 	 # c stands for combine
X
X[4]			   # Gives value at position of 4, in this case 40
X[c(3,4)] 		   # Gives values at position 3 and 4, in this case 30 40
X[1:5] 			   # Gives first 5 observations, in this case 10 20 30 40 50
X[c(2,5,9)]        # Gives values at position 2, 5 and 9, in this cae 20 50 90
X+1 			   # adds 1 to every number in the vector
X*10               # multiplies each value of the vector with 10
X*X 			   # Multiplies each value with itself
X1<-1:10           # Creates a vector with values 1-10
X1
X2<-seq(1,10,by=1) # Creates a vector from 1 to ten, stepping once each time
X2
X3<-seq(0,100,by=10) 	# Makes it step by integers of 10
X3
length (X3)				# Gives the number of values in X3
X4<-seq(0,10,by=0.5)
X4
X5<-rep(X,times=2) 		# Repeats the X vector 2 times
X5
X6<-rep(X,each=2) 		# Repeats each number in the vector twice before moving onto the next number. 
X6
X7<-rep(X,length=14) 	# Repeats vector X until the new vector is 14 numbers long
X7
seasons<-c("Summer", "Autumn", "Winter", "Spring")     #categories must be in quotation marks
seasons

## Reversing the vector
y = rev(X)
y

#***************************
#********* Matrices ********
#***************************
#     A   B
# X   1   3
# Y   2   4

#* For matrices always gives the values by column
#* nrow gives the number of rows in the matrix
matrix (c(1, 2, 3, 4), nrow = 2)

#       [,1] [,2]
#[1,]    1    3
#[2,]    2    4

## Adding in names for columns and rows
#* dimnames gives the names for first the rows and then the columns
matrix (c(1, 2, 3, 4), nrow = 2, dimnames = 
            list (c("X", "Y"), c("A","B")))

#       [A] [B]
#[X]    1    3
#[Y]    2    4

#        *****

#***********************************
#************ Exercise 1 **********
#***********************************
# Create a vector of integers from 1 to 50

x <- c(1:50)
x

# Create a vector of even integers from 2 to 20

x1 <- seq(2,20, by=2)
x1

# Create a vector with numbers 1, 2, 3, 1, 2, 3, 
#  1, 2, 3

x2 <- c(1,2,3)
x3 <- rep(x2, times=3)
x3

# Create a vector with numbers 1,1,1,1,1,2,2,2,2,2

x4 <- c(1,2)
x5 <- rep(x4, each=5)
x5

# Create a vector of numbers from 0 to 1 with intervals 
#         of 0.05

x6 <- seq(0,1, by=0.5)
x6

# Create a vector with fractions 1, 1/2, 1/3, 1/4, 1/5

x7 <- c(1, 1/2, 1/3, 1/4, 1/5)
?fractions()
library(MASS)
fractions(x7)

               #*****


#********************************************
#********* Creating a Random Dataset ********
#********************************************

# Creating two samples from a random data set 

mu1=3       # Give the mean for first sample
sdev1= 1    # Give the standard deviation for first sample
mu2=5       # Give the mean for second sample
sdev2=1.1   # Give the standard deviation for second sample
        
# Create a random dataset that is normally distributed with 30 values
# with a mean = mu1 and sdev = sdev1
sample1 = rnorm(30,mean = mu1,sd = sdev1)
sample1

# Create a random dataset that is normally distributed with 40 values
# with a mean = mu2 and sdev = sdev2
sample2 = rnorm(40,mean = mu2,sd = sdev2)
sample2
        
# combine vectors into 1 dataset
sample = c(sample1, sample2)
sample
        
# create a random categorical variable for each sample value
category =c(rep("s1", 30), rep("s2", 40))
        
# Now combine the two to get a dataset
Rdat = data.frame(sample, category)     # data.frame puts it in a table
Rdat
head(Rdat)  # gives first 6 numbers in data set

            #        *****

#**************************************************
#********* Creating a subset from the data ********
#**************************************************

# Use subset()to extract specific data or take out outliers
#* We want to create a subdata set using our random data we generated but we only 
#  want values less than 5
subdata <- subset(Rdat, sample<5)
# check if it worked by looking at the values in the dataset
subdata

# extracting data from both variables
#** i.e., sample data less than 5 AND only from category s1
subdata2 <-subset(Rdat,sample<5 & 
                      category =="s1")
subdata2

# extracting data from sample that are less than OR equal to 3 OR more than 5 
subdatc <-subset(Rdat,sample <= 3 | sample > 5)   # for 'OR' we use vertical bar '|'
subdatc

            #        *****

#**************************************************
#******** Writing subset data to CSV files ********
#**************************************************

# Use the write.csv command
# write.csv(Name of the dataset,"Location where you want to save it\\Name of the file.csv")
write.csv(subdata,
          "~/Desktop/Hons./Stats/R data files and scripts/subdata.csv")
write.csv(subdata2,"~/Desktop/Hons./Stats/R data files and scripts/subdata2.csv")


            #        *****

