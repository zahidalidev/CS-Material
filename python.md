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
---
## Python Implementaion

```
1- CPython written in c
2- Jython written in java
3- IronPython written in c#
4- PyPy written in subset of Python
```
---
## How Python Code Executed
Python is platform independent because when we run python program using CPython first it will convert Python code into Python Bytecode (in Jython converted into Java Bytecode and will be executed by java virtual machine) then it will pass that code to Python Virtual Machine which will convert it into machine code and executed.
 
---

## Primitive Types
```
1- Numbers 2- Boolean 3- Strings
```
## NonPremitive Types
```
1- Arrays  2- Lists  3- Tuples  4- Dictionary  5- Sets  6- Files
```
## Complex Types
```
1- Range
```
---

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
---

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
---
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
---

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

---

## **List**
```
letters = ["a", "b", "c"] # single list can be of characters, numbers, boolean etc.
matrix = [[0, 1], [4, 2]]  # two dimensional list
zeros = [0] * 5  # print 5 zeroes
combined = zeros + letters  # combining two lists
numbers = list(range(20))  # from 0 to 19
chars = list("hello world")  # list of characters
print(len(chars))  # length of list
```
### Unpack List
```
numbers = [1, 2, 4]
first, second, third = numbers
print(first)

<!-- packing and unpacking, packing all other elements in others with * -->
numbers = [1, 2, 3, 4, 5, 6, 7, 8]
first, second, *others = numbers
or
first, *others, last = numbers
```
### Iterate over list
```
letters = ["a", "b", "c"]
for index, letter in enumerate(letters):   #enumerate return typle like this (0, "a")
    print(index, letter)
```
### Add or Remove from list
```
letters = ["a", "b", "c"]

# add items in list
letters.append("d")  # insert at the end of list
letters.insert(0, "-a")  # insert into specific index

# remove items
letters.pop()  # remove from the end of the list
letters.remove("b")  # remove specific character
del letters[0: 2]  # remove in specific range
letters.clear()  # reomve all caharacters
```

### Finding items
```
letters = ["a", "b", "c"]
letters.count("b")  # if not found return 0

if "d" in letters:  # if oncdition to prevent error bcz iff letter not found index method throw an error
    print(letters.index("d"))
```
### sorting
```
numbers = [3, 1, 5, 2, 7, 9, 0]

#  modifying original list
numbers.sort()  # in ascending order
numbers.sort(reverse=True)  # in descending order
#  sorting list and copying
new_list = sorted(numbers)  # in ascending order
new_list = sorted(numbers, reverse=True)  # in descending order
```
```
<!-- sorting list of tuples sing function -->

items = [
    ("product1", 10),
    ("product2", 5),
    ("product3", 20)
]

def sort_item(item):
    return item[1]

items.sort(key=sort_item)
print(items)
```
```
<!-- usig lamda expression(ennymus function) better way then function  -->

items = [
    ("product1", 10),
    ("product2", 5),
    ("product3", 20)
]

items.sort(key=lambda item: item[1])
print(items)
```
```
<!-- Map Function and Comprehensions-->

items = [
    ("product1", 10),
    ("product2", 5),
    ("product3", 20)
]

prices = list(map(lambda item: item[1], items))  #using map
prices = [item[1] for item in items]  #comprehension
print(prices)
```
```
<!-- Filter Function and Comprehensions -->

items = [
    ("product1", 10),
    ("product2", 5),
    ("product3", 20)
]

filter_list = list(filter(lambda item: item[1] > 10, items))  #using Filter
filter_list = [item for item in items if item[1] > 10]  #comprehension
print(filter_list)
```
```
<!-- ZIP to combine multiple lists -->

list1 = [1, 2, 4, 5]
list2 = [5, 3, 9, 9]
word = "zahid"
com_list = list(zip(word, list1, list2))
print(com_list)
```
- - - 
## **Stack (LIFO)**
```
browsing_session = []
browsing_session.append(1)  # inserting into the end of list
browsing_session.pop()  # removing from the end of list mean LIFO

if browsing_session:
    print(browsing_session[-1])  # getting last value if not empty
```

## **Queues(FIFO)**
```
from collections import deque #importing this for efficiency otherwise we can use siple list methodss

queue = deque([])
queue.append(1)
queue.append(2)
queue.append(3)

queue.popleft()
print(queue)

if not queue:
    print("empty")

```
---
### **Tuples (Read only List)**
```
1- point = (1, 2)
2- point = 1, 2
3- point = 1, 
4- point = ()
5- point = tuple([1, 2])
5- point = tuple("zahid ali")

point = (1, 2) + (3, 4)
point = (1, 2) * (3, 4)

print(point[0])
```
---

## **Array**
```
from array import array
# 'i' is type code of array detail: https://docs.python.org/3/library/array.html
numbers = array('i', [1, 2, 3]) 
print(numbers[0])

# other methods are like list
```
---
## **Set** 
```
numbers = [1, 1, 2, 3, 4]
first_set = set(numbers)
second_set = {1, 5}

print(first_set | second_set)  # UNION of two sets
print(first_set & second_set)  # intersection
print(first_set - second_set)  # difference
print(first_set ^ second_set)  # sematric difference

if 1 in first_set:
    print("yes")

<!-- comprehension in set -->
value = {x * 2 for x in range(10)}
print(value)
```
---
## **Dictionary**
```
point = {"x": 1, "y": 3}
# OR
point = dict(x=1, y=3)

point["z"] = 10  # new key value
point["x"] = 20  # reassigning value

# getting value
print(point.get("x"))
# OR
if "z" in point:
    print(point["z"])

# deleting
del point["x"]

# Iterate over dict
for key in point:
    print(key, point[key])
# or
for key, value in point.items():
    print(key, value)

<!-- Comprehension in Dic -->
value = {x: x * 2 for x in range(10)}
print(value)

```
---
## **Generator Object**
```
values = (x for x in range(10))
print(type(values))
```
---
## **Generator Object is more effecient**
generator object is more effecient then list because generator object donnt store all the items in memory so we wont be able to get total number items if we try to get length that will be error
```
from sys import getsizeof

values = (x * 2 for x in range(100000))  # generator object 
print("gen: ", getsizeof(values), "bytes") # taking 120 bytes

values = [x * 2 for x in range(100000)]  # list 
print("list: ", getsizeof(values), "bytes") # taking 824464 bytes
``` 
---
## **Unpacking operator(*) Equal to Spread(...) in JS**
```
By using unpacking operator we can unpack any iterable

numbers = [1, 2, 3, 4]
print(*numbers)

values = [*range(10), *"zahid", *(1, 2, 4), *{6, 7, 9}]
print(values)

# For dictionary use double *
first = {"x": 2}
second = {"x": 10, "y": 20}
combined = {**first, "z": 10, **second}
print(combined)
```
---
## **Exercise Find maximum repeated char in string**
```
from pprint import pprint

sentence = "This is a common interview question"

char_frequency = {}
for char in sentence:
    if char in char_frequency:
        char_frequency[char] += 1
    else:
        char_frequency[char] = 1

char_frequency_sorted = sorted(
    char_frequency.items(), key=lambda item: item[1], reverse=True)

pprint(char_frequency_sorted[0])
```
---
## **Exception Handling** 
https://docs.python.org/3/library/exceptions.html
```
<!-- Handling value Error -->

try:
    age = int(input("Age: "))
except ValueError as ex:
    print("You didnot enter valid age")
    print(ex)
else:
    print("No Exception wer thrown")
```
```
<!-- Zero Division Error -->

try:
    age = int(input("Age: "))
    xFactor = 10/age
except (ValueError, ZeroDivisionError) as ex:
    print("You didnot enter valid age")
else:
    print("No Exception wer thrown")
```
```
<!-- Final stage to close files, network connections etc. -->

try:
    file = open("app.py")
except FileNotFoundError as ex:
    print(ex)
finally:
    file.close()
```
```
<!-- Using With no need of final state for file because using with statement files can automatically close simply means with statemtn is used to automatically releas external resources, if an object support content managemnet protocol in other words has two magic methods __enter__ and __exit__ then we can use with -->

try:
    with open("app.py") as file:
        print("file opened")
except FileNotFoundError as ex:
    print("error: ", ex)
```
```
<!-- open multiple files usgin with statement -->

try:
    with open("app.py") as file, open("secondFile.txt") as file2:
        print("file opened")
except FileNotFoundError as ex:
    print("error: ", ex)
```
```
<!-- Raise Exception and handle (bad practice) -->

def calculate_factor(age):
    if age <= 0:
        raise ValueError("Age cannot be zero or less")
    return 10/age

try:
    calculate_factor(-1)
except ValueError as ex:
    print(ex)
```
```
<!-- Raisng Error by returning None (better faster)-->

def calculate_factor(age):
    if age <= 0:
        return None
    return 10/age

xfactor = calculate_factor(-1)
if xfactor == None:
    pass
```

```
<!-- Calculating Exceution Time -->

from timeit import timeit

code1 = """
def calculate_factor(age):
    if age <= 0:
        return None
    return 10/age

xfactor = calculate_factor(-1)
if xfactor == None:
    pass
"""

print("time: ", timeit(code1, number=1000))
```
---
## **CLasses**
Class is a blueprint for creating new objects and object is instane of class
```
<!-- methods we define in class should have atleast one parameter that is self this referenece to current object -->

class Point:
    def draw(self):  # draw is instance method and self is reference to curent object
        print("draw")

point = Point()
point.draw()
```
```
class Point:
    def __init__(self, x, y): # __init__ is a constructor and this is magic method
        self.x = x
        self.y = y

    def draw(self): #instance method
        print(f"Point ({self.x}, {self.y})")


point = Point(3, 5)
point.draw()
```
```
<!-- Class level attribute -->

class Point:
    default_color = "red"  # class level attribute are shared among all instances of class


Point.default_color = "blue"  # change for all instances of class

point = Point()
point.default_color = "green"  # chane only for point object
print(point.default_color)

another = Point()
print(another.default_color)
```
### Defining method at class level in Class
```
class Point:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    @classmethod
    def zero(cls):  # Method at class Level and cls is reference to class itself
        return cls(0, 0)  # this is equalent to Point(0, 0)

    def draw(self):
        print(f"({self.x}, {self.y})")


point = Point.zero()
point.draw()
```
### Magic Methods
https://rszalski.github.io/magicmethods/
```
class Point:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def __str__(self):  # called when we try to convert object to string
        return f"({self.x}, {self.y})"

    def draw(self):
        print(f"({self.x}, {self.y})")


point = Point(0, 0)
print(point)
# or
print(str(point))
```
```
<!-- equality, greater and lesser magic methid -->

class Point:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def __eq__(self, other):  # this magic methid will when we compare two objects for equality
        return self.x == other.x and self.y == other.y

    def __gt__(self, other):  # called when check one object is greater then or lesser then other
        return self.x > other.x and self.y > other.y


point = Point(1, 1)
other = Point(0, 0)

print(point == other)
print(point > other)
print(point < other)
```
```
<!-- add and subtract -->

class Point:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    # mosh implementation
    # def __add__(self, other):  # called when we add two objects
    #     return Point(self.x + other.x, self.y + other.y)

    def __add__(self, other):  # called when we add two objects
        return self.x + other.x, self.y + other.y

    def __sub__(self, other):  # called when we subtract two objects
        return self.x - other.x, self.y - other.y


point = Point(1, 1)
other = Point(4, 2)
print(point + other)
print(point - other)

# mosh implementation
# combined = point + other
# print(combined.x)
```

---
## **Making Custom Container**
```
class TagCloud:
    def __init__(self):
        self.__tags = {} # __ is to make tags private mean "__tags" is private and "tags" is public

    def add(self, tag):  # called when adding item
        self.__tags[tag.lower()] = self.__tags.get(tag.lower(), 0) + 1

    def __getitem__(self, tag):  # called when getting item
        return self.__tags.get(tag.lower(), 0)

    def __setitem__(self, tag, count):  # called when setting item
        self.__tags[tag.lower()] = count

    def __len__(self):  # called when getting lenght of custom container
        return len(self.__tags)

    def __iter__(self):  # called when iterrating over container
        return iter(self.__tags)


cloud = TagCloud()

cloud.add("t1")
cloud.add("t2")
cloud["t1"] = 10
print(cloud["t1"])
print("length: ", len(cloud))

for tag in cloud:
    print(tag)

```







