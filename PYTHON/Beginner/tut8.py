###### ~~~~~~~~~~~~~~~~~~EXCEPTION HANDLING ~~~~~~~~~~~~############

## EXCEPTIONS PREVENT ERRORS AND CRASHINGS OF THE program
#
# def Main():
#     try:
#         f= open("blah.txt", "r")
#         for line in f:
#             print(line.strip("\n\r"))
#         f.close()
#
#     except:   ## if the file is not found then
#         print(" The file was either not found or unable to be read")
#
# if __name__== "__main__":
#     Main()



######~~~~~~~ OUTPUT EXITING ~~~~###########


def Main():
    try:
        f= open("blah.txt", "r")
        for line in f:
            print(line.strip("\n\r"))
        f.close()

    except:   ## if the file is not found then
        print(" The file was either not found or unable to be read")

    finally:
        print("EXITING")

if __name__== "__main__":
    Main()
