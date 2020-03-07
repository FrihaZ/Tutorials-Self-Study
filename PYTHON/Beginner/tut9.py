####~~~~~~~~~~~ MODULES~~~~~~~~~~~~~~######

## COLLECTIONS OF CODE WRITTEN BY OTHERS
## THEY ARE TOOLS AND CAN BE IMPORTED

import math

#######################################################################


# def Main():
#     try:
#         number= float(input("Please enter a number: "))
#         number = math.fab(number)   ## fab= float absolute , require decimals, the number will always be positive
#
#     except:
#         print("You did not enter a number!")
#
#
# if __name__== "__main__":
#     Main()

## ~~~~~~~~~~~~~~~ using pi ~~~~~~~~~~~~~~~~~~~~~~~~~###########
### calculate teh area of a circle using the math module

def Main():
    try:
        radius= float(input("Please enter a radius: "))
        area= math.pi * radius**2
        print(" Area =", area)
    except:
        print("You did not enter a number!")


if __name__== "__main__":
    Main()
