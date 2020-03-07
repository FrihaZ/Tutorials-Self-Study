####~~~~~~~~~~~~CREATING FUNCTIONS~~~~~~~~~~~~~~~~~~####################


# def hello():
#     print("hello")
#     print("hello")
#
# print("started")
#
# hello()


##~~~~~~~~~~~~~~~USING return: returns a value~~~~~~~~~~~~~~~~~~~~~~~#########
#
# def getInteger():
#     result = int(input("Please enter an integer: "))
#     return result
#
#
# print("started")
#
# output= getInteger()
#
# print(output)



#~~~~~~~~~~~~ creating a Main~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~################

## the place where the program starts
## good practice



# def getInteger():
#      result = int(input("Please enter an integer: "))
#      return result
#
#
# def Main():
#     print("started")
#     output= getInteger()
#     print(output)
#
# ## we wnat to use the MAIN function
# if __name__ == '__main__':
#     Main()


##~~~~~~~~~ Using Paramaters ~~~~~~~~~~########################
## allows us to give variables to our functions
## goes in the BRACKETS
## multiple variables can be passed in by seperating with a comma (,)

def getInteger(prompt):
     result = int(input(prompt))
     return result


def Main():
    print("started")
    output= getInteger("Please enter an integer: ")
    output2= getInteger("Please enter another integer: ")
    print(output)
    print(output2)

## we want to use the MAIN function
if __name__ == '__main__':
    Main()
