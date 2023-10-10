#1.
#a
elevenLetters <- LETTERS[1:11]
elevenLetters
#[1] "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K"
#b
oddNumLetters<- LETTERS [1:26 %% 2 == 1]
oddNumLetters
#[1] "A" "C" "E" "G" "I" "K" "M" "O" "Q" "S" "U" "W" "Y"
#c.
vowels <- LETTERS [c(1,5,9,15,21)]
vowels
#[1] "A" "E" "I" "O" "U"
#d
smallLetters <- letters[1:5]
smallLetters
# [1] "a" "b" "c" "d" "e"
#e.
letters2 <- letters[15:24]
letters2
#[1] "o" "p" "q" "r" "s" "t" "u" "v" "w" "x"
#2.
#a.
city <- c("Tuguegarao City", "Manila", "Iloilo City", "Tacloban", "Samal Island", "Davao City")
city
#[1] "Tuguegarao City" "Manila"          "Iloilo City"     "Tacloban"        "Samal Island"    "Davao City" 
#B.
temp <- c(42, 39, 34, 34, 30, 27)
temp 
#[1] 42 39 34 34 30 27

#C.
cityTemp <- data.frame(city,temp)
cityTemp #The cityTemp data frame has two columns: "city" and "temp". The "city" column contains the cicity temp
#1 Tuguegarao City   42
#2          Manila   39
#3     Iloilo City   34
#4        Tacloban   34
#5    Samal Island   30
#6      Davao City   27

#D.
names(cityTemp) <- c("City", "Temperature")
cityTemp
#The cityTemp has two column names which contains "city" and "temperature"
#             City Temperature
#1 Tuguegarao City          42
#2          Manila          39
#3     Iloilo City          34
#4        Tacloban          34
#5    Samal Island          30
#6      Davao City          27


#E.
str(cityTemp)
#str(cityTemp) output tells that cityTemp is a data frame with two columns:"City" and "Temperature’
#data.frame’: 6 obs. of 2 variables:
#$ City : chr "Tugue-garao City" "Manila" "Iloilo City" "Tacloban" ...
#$ Temperature: num 42 39 34 34 30 27

#f
row_3 <- cityTemp[3,]
row_3
#City Temperature
#3 Iloilo City          34

row_4 <- cityTemp[4,]
row_4
#City Temperature
#4 Tacloban          34

#g
max(cityTemp$City)
#[1] "Tuguegarao City"

min(cityTemp$City) 
#[1] "Davao City"


#Using Matrices
#2.Create a matrix of one to eight and eleven to fourteen with four columns and three rows.
#a
Matrix1 <- matrix(data = c(1:8, 11:14),nrow =3 , ncol = 4)
Matrix1 
#It combines two sequences of numbers: 1 to 8 and 11 to 14, arranging them into the specified[,1] [,2] [,3] [,4]

# [,1] [,2] [,3] [,4]
# [1,] 1 4 7 12
# [2,] 2 5 8 13
# [3,] 3 6 11 14
#
#b
Matrix_mul <- Matrix1 *2
Matrix_mul
#[,1] [,2] [,3] [,4]
#[1,]    2    8   14   24
#[2,]    4   10   16   26
#[3,]    6   12   22   28

#c
row_2 <- Matrix_mul[2,]
row_2
#[1] 4 10 16 26


#d
DispMatrix1 <- Matrix_mul[1:2, 3:4]
DispMatrix1
#[,1] [,2]
#[1,]   14   24
#[2,]   16   26
#e
DispMatrix2 <- Matrix_mul[3, 2:3]
DispMatrix2
#[1] 12 22
#f
col4<- Matrix_mul[,4]
col4
#[1] 24 26 28

#g
rownames(Matrix_mul) <- c("isa", "dalawa", "tatlo")
colnames(Matrix_mul) <- c("uno", "dos", "tres", "quatro")
Matrix_mul
#       uno dos tres quatro
#isa      2   8   14     24
#dalawa   4  10   16     26
#tatlo    6  12   22     28


#h
Matrix_new <- matrix(Matrix_mul, ncol = 2, byrow = TRUE)
dim(Matrix_new) <- c(6,2)
Matrix_new
#     [,1] [,2]
#[1,]    2    4
#[2,]    6    8
#[3,]   10   12
#[4,]   14   16
#[5,]   22   24
#[6,]   26   28


#Using Arrays
#3
#a.
data <- c(1,2,3,6,7,8,9,0,3,4,5,1)
data_new <- array(data, dim = c(2, 4, 3) )
data_new
#, , 1

#[,1] [,2] [,3] [,4]
#[1,]    1    3    7    9
#[2,]    2    6    8    0

#, , 2

#[,1] [,2] [,3] [,4]
#[1,]    3    5    1    3
#[2,]    4    1    2    6

#, , 3

#[,1] [,2] [,3] [,4]
#[1,]    7    9    3    5
#[2,]    8    0    4    1
dim(data_new)

#b Three dimensions (2, 4, 3)

#c
rownames(data_new) <- letters[1:2]
colnames(data_new) <- LETTERS[1:4]
dimnames(data_new)[[3]] <- c("1st-Dimensional Array", "2nd-Dimensional Array", "3rd-Dimensional Array")
print(data_new)
#, , 1st-Dimensional Array

#A B C D
#a 1 3 7 9
#b 2 6 8 0

#, , 2nd-Dimensional Array

#A B C D
#a 3 5 1 3
#b 4 1 2 6

#, , 3rd-Dimensional Array

#A B C D
#a 7 9 3 5
#b 8 0 4 1