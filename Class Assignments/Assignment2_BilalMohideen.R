#Assignment 2 - Narcissistic Numbers
#Bilal Mohideen - BTC1855H

# (TP) Overall, great job on your assignment! I thought that your comments were extremely clear and direct, which helps
# (TP) with the readability of your code. Your variable names were also clear, which was another green check! You kept
# (TP) the syntax consistent throughout and kept your code very clean. All that counts to even better readability. Your 
# (TP) code completed the tasks that you were required to accomplish and were able to handle the user input quite well! 
# (TP) There were a few test cases that didn't work out, but those were extreme cases (such as decimals). I had a few 
# (TP) comments down below for certain approaches but no big concerns! Once again, great work!

# (TP) It wasn't a requirement for this assignment but you could potentially add a step-by-step plan here.

#Prompts the user to enter a three digit positive number
answer <- readline(prompt = "Please enter a three digit positive number: ")

#Separate number into individual digits with "strsplit" function
#Use "as.numeric" to ensure that "digits" is in numeric form
# (TP) Love the simple, clear, and straightforward explanation of what you are doing in this line of code! May be
# (TP) a good idea to indicate what you are trying to do with the double square brackets operator and/or why.
digits <- as.numeric(strsplit((answer),"")[[1]])

# (TP) I liked that you saved each of the calculations into different variables, making it easy for you to check in the
# (TP) environment for where the calculations may have messed up. Again, great clear comments!
#Calculating the cube of each digit 
digits_cubed <- (digits^3)

#Calculating the sum of cubes
digits_sum <- (sum(digits_cubed))

#Converting "answer" from character data into numeric form
#under new variable "answer_num"
answer_num <- as.numeric(answer)

# (TP) I see that you have completed the calculations before completing the if-checks to determine the validity
# (TP) of the user inputs. This is an interesting approach! I would suggest for the if-checks be completed first, and
# (TP) only when the user input passes the checks, then should you complete the calculations. This then avoids those
# (TP) calculations to be made when it would only output NA's (e.g., when user input was `ddd`).

# (TP) I love that you include the user input in the output error message so that the user could be reminded of what
# (TP) exact input they provided to the computer!

#Checking if the number is a valid entry 
#(i.e. not a character string)
#by checking if "answer_num" is NA
if (is.na(answer_num)){
  print(paste("Error:", answer, "is not a number."))
  
#Checking if number is a valid entry that is not less than 3 digits 
#by converting to character form, and using "nchar"
# (TP) I can understand the logic you utilized for the two else if statements below and it does work if you assume that
# (TP) the user inputs an integer. However, when decimals are introduced, certain problems came up. For instance, when I
# (TP) tested 12.3 as the input, the error message says that it is more than three digits. Although it does not break the 
# (TP) code, the error message is not entirely correct as 12.3 does not have more than three digits. The code does break
# (TP) when I tested it with 1.3 as the input. According to your code, the number of characters are synonymous with the
# (TP) number of digits. As a result, 1.3 did not have more or less than three digits. Instead, the user is met with an
# (TP) error message regarding the code. It may help to have a separate if check that looks for decimals in the user input
# (TP) prior to checking the number of digits provided!
} else if (nchar(as.character(answer_num)) < 3){
  print(paste("Error:", answer, "is less than three digits."))
#Checking if number is a valid entry that is not more than 3 digits 
#by converting to character form, and using "nchar"
} else if (nchar(as.character(answer_num)) > 3){
  print(paste("Error:",answer, "is more than three digits."))

# (TP) Great check! You are accounting for negative cases, which were not explicitly discussed in the assignment. 
# (TP) Simple and straightforward check with an appropriate and informative error message. Nice!
#Checking if number is a valid entry that is not negative 
#Verifying that "answer_num" is not less than 0
} else if (answer_num < 0){
  print(paste("Error:", answer, "is a negative number."))

# (TP) Great work! Clear and straightforward comments and approach!
#The entry is now verified as a three digit positive number
#Checking if "digits_sum" is equal to "answer_num"
#If this is TRUE, then "answer" is an Armstrong number
} else if (digits_sum == answer_num){
  print(paste(answer,"is an Armstrong number."))
#Checking if "digits_sum" is NOT equal to "answer_num"
#If this is TRUE, then "answer" is not an Armstrong number
} else if (digits_sum != answer_num){
  print(paste(answer,"is not an Armstrong number."))
}
