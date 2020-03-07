######## ~~~~~ FILE IO ~~~~~~~~~~~~################
## easy and great way to store data
#
# def Main():
#     f= open("myfile7.txt",  "r")
#     for line in f:
#         print(line)
#     f.close()
#
# if __name__=="__main__":
#     Main()


###### ~~~~~~ Striping and removing lines and empty spaces ~~~~~~###########

# '\n' = newline characters
# '\r' = for carriage returns

## we can use strip() function to remove these


# def Main():
#     f= open("myfile7.txt",  "r")
#     for line in f:
#         print(line.strip("\n\r"))
#     f.close()
#
# if __name__=="__main__":
#     Main()




######~~~~~~~~ OUTPUT FILES ~~~~~~#############
## TO OUTPUT WE USE THE 'w' WRITE MODE
## write() function is used
#
# def Main():
#     f= open("myfile7.txt",  "w")
#     for i in range(4):   # only 4 words can be added
#         f.write(input("Please enter a word: ") + '\n')
#
#     f.close()
#
# if __name__=="__main__":
#     Main()

### ~~~~ WITH STATEMENTS ~~~~~##########



def Main():
    WORDS= [ "CAT", "SAT", "BAT", "MAP"]
    with open("words.txt", "w") as f:
        for word in WORDS:
            f.write(word + "\n")

if __name__=="__main__":
    Main()
