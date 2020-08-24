"""
This is a dumb calculator that can add and subtract whole numbers from zero to five.
When you run the code, you are prompted to enter two numbers (in the form of English
word instead of number) and the operator sign (also in the form of English word).
The code will perform the calculation and give the result if your input is what it
expects.

The code is very long and messy. Refactor it according to what you have learned about
code simplicity and efficiency.
"""

print('Welcome to this calculator!')
print('It can add and subtract whole numbers from zero to five')
a = input('Please choose your first number (zero to five): ')
while (a != "zero") and  (a != "one") and (a != "two") and (a !="three") and (a != "four") and (a != "five"):
    a = input('Please choose your first number (zero to five): ')
b = input('What do you want to do? plus or minus: ')
while (b != "plus") and  (b != "minus"):
    b = input('What do you want to do? plus or minus: ')
c = input('Please choose your second number (zero to five): ')
while (c != "zero") and  (c != "one") and (c != "two") and (c !="three") and (c != "four") and (c != "five"):
    c = input('Please choose your second number (zero to five): ')
# We stablish a dictionary to set the equivalences between text and numbers
equivalences={"zero":0, "one":1, "two":2, "three":3, "four":4, "five":5}

# We search for the value of our input
digit1=equivalences[a]
digit2=equivalences[c]

# Operate on the inputs
if b == "plus":
    result=digit1+digit2
if b == "minus":
    result=digit1-digit2
            
print(digit1, b, digit2, "equals", result)#if a == 'zero' and b == 'plus'  and c == 'zero':

print("Thanks for using this calculator, goodbye :)")
