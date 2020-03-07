
########~~~~~~~~~~CLASSES ~~~~~~~~~~~##########

## critital concept that makes up the object oriented programming (oop)
# a data structure/type
# it holds data and behaviours: Attributes/ methods
## already used it before in python in mystring.strip()

# syntax:
# class MyClass:
#     ...
#     ...

# Attributes: variable that belong to a class :
## MyClass.MyAttribute, where the attribute is accessed using the '.'

# Objects: like a variable but hold a whole class information inside
# we can store and manipulate infor inside the object

class MyClass:
    number = 0
    name = "no name"

def Main():
    me = MyClass()
    me.number = 1337
    me.name= "Friha"

    friend= MyClass()
    friend.number= 6
    friend.name= "steve"

    empty= MyClass()

    print("Name: " + me.name + ", favourite number: " + str(me.number))
    print("Name: " + friend.name + ", favourite number: " + str(friend.number))
    print("Name: " + empty.name + ", favourite number: " + str(empty.number))

if __name__ == '__main__':
    Main()
