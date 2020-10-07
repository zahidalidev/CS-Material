# **Python** #

## Installation ## 

```
1- install python from python.org
2- sett environment variable
3- instal python extension in VsCode
4- install lint in VsCode
5- PEP 8 -- Style Guide for Python Code https://www.python.org/dev/peps/pep-0008/
6- install code runner in VsCode to run the python code by pressing 
```
## Python Implementaion

```
1- CPython written in c
2- Jython written in java
3- IronPython written in c#
4- PyPy written in subset of Python
```

## How Python Code Executed
Python is platform independent because when we run python program using CPython first it will convert Python code into Python Bytecode (in Jython converted into Java Bytecode and will be executed by java virtual machine) then it will pass that code to Python Virtual Machine which will convert it into machine code and executed.

## Primitive Types
```
1- Numbers 2- Boolean 3- Strings
```
## NonPremitive Types
```
```
## Complex Types
```
1- Range
```
## Conditional Statement
```
temp = 15
if temp > 30:
    print("temperature is high")
elif temp > 20:
    print("temperature is normal")
else:
    print("temperature is low")
print("Executed")
```
## Ternary Operator
```
age = 12
message = "Eligible" if age > 18 else "Not Eligible" #ternary Operator
print(message)
```
## Logical Operator
```
1- and, 2- or, 3- not
```
## Loops
<br>

### For loop
```
<!-- start from 0, execute 4 times  -->
for index in range(4):
    print(index)

<!-- Starting from 1 and ending at 3 -->
for index in range(1, 4):
    print(index)

<!-- gap is 2 mean odd numbers -->
for index in range(1, 10, 2):
    print(index)

<!-- Iterate over string -->
for index in "Zahid Ali":
    print(index)

<!-- Iterate Over List -->
for number in [1, 2, 4, 5, 8]:
    print(number)
```
### For Else loop
```
successful = False
for index in range(3):
    print("attemp")
    if successful:
        print("Successful")
        break
else:
    print("attempted 3 times and failed")
```

## Functions

```
def greet(name = "ali"):   #here "ali" is default parameter
    print(f"hi {name}")

greet("zahid")
or
greet(name = "zahid") #here name =  is keyword argument

<!-- another example with tuple here numbers is tuple to receive all arguments -->
def xargs(*numbers):
    for number in numbers:
        print(number)

xargs(2, 4, 6, 8, 9, 3)

<!-- To receive all arguments in dictionary here user is dictionary-->
def save_user(**user):
    print(user)
    print(user["id"])
    
save_user(id=1, name="zahid", age="22")

<!-- modifing global variable inside function but this is really bad practice -->
a = "a"  #global variable
def modfiy():
    global a
    a = "b"
modfiy()
print(a)
```

## List
```
letters = ["a", "b", "c"] # single list can be of characters, numbers, boolean etc.
matrix = [[0, 1], [4, 2]]  # two dimensional list
zeros = [0] * 5  # print 5 zeroes
combined = zeros + letters  # combining two lists
numbers = list(range(20))  # from 0 to 19
chars = list("hello world")  # list of characters
print(len(chars))  # length of list

```








