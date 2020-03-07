##########~~~~~~~~~~USING ITERATIONS~~~~~~~~~~~~~##########

## CONCEPT OF REPETITION
## FOR LOOP: REPEATS A FIXED NUMBER OF TIMES
# EG:

# for step in range(5):
#     print(step)

#
# def Main():
#     for step in range(5):  ## numbers from 0 to 4
#         print(step)   ## this will print numbers from 0 to 4
#
# if __name__== "__main__":
#     Main()


#########~~~~~~~~~~~~ USING FOR LOOP ~~~~~~~###############

## USING A LIST OF WORDS
#
# def Main():
#     for step in range(5):  ## numbers from 0 to 4
#         print(step)   ## this will print numbers from 0 to 4
#     words = ["cat", "bat", "hat", "rat", "sat"]
#
#     for word in words:
#         print(word)



########~~~~~~~~~~~~~ USING A WHILE LOOP ~~~~~~~~~~~~~~##########


#
# def Main():
#     for step in range(5):  ## numbers from 0 to 4
#         print(step)   ## this will print numbers from 0 to 4
#     words = ["cat", "bat", "hat", "rat", "sat"]
#
#     for word in words:
#         print(word)
#     num = 0
#     while num <=0:      ## the program will loop until a positive number is added
#         num = int(input("Please enter a positive integer: "))



#####~~~~~~~~~~~~~~ CREATING AN INFINITE LOOP ~~~############



def Main():
    for step in range(5):  ## numbers from 0 to 4
        print(step)   ## this will print numbers from 0 to 4
    words = ["cat", "bat", "hat", "rat", "sat"]

    for word in words:
        print(word)
    num = 0
    while num <=0:      ## the program will loop until a positive number is added
        num = int(input("Please enter a positive integer: "))
    while True:                ## once a positive number is added the hello will be shown until stopped with ctrl+c
        print("hello")



if __name__== "__main__":
    Main()
