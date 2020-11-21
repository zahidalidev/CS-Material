# **Python** #

## Installation ## 

```
1- install python from python.org
2- sett environment variable
3- instal python extension in VsCode
4- install lint in VsCode
5- PEP 8 -- Style Guide for Python Code https://www.python.org/dev/peps/pep-0008/
6- install code runner in VsCode to run the python code by pressing (Ctrl + alt + n)
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
https://www.datacamp.com/community/tutorials/data-structures-python

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

# access private members
print(cloud._TagCloud__tags)
```
---
## **Properties**
```
<!-- here we are using properties to check conditionally price is valid or not -->
class Product:
    def __init__(self, price):
        self.__price = price    # __price is private

    @property
    def price(self):
        return self.__price

    @price.setter   # property to set the value of price
    def price(self, value):
        if(value > 0):
            self.__price = value


product = Product(0)
product.price = 10
print(product.price)
```
---
## **Inheritance**
object class is base class for all classes
```
# Parent or Base Clss
class Animal:
    def __init__(self):
        self.age = 1

    def eat(self):
        print("eat")


# child or Sub Class
class Mammal(Animal):
    def walk(self):
        print("ealk")


# shild or Sub Class
class Fish(Animal):
    def swim(self):
        print("swim")


m = Mammal()
m.eat()
m.walk()
print(m.age)

print(isinstance(m, Animal))   # isinstance to check the object is instance of another class

print(issubclass(Mammal, Animal)) # with issubclass we can see if class drived from another class
```
---
## **Method Overriding**
```
# Parent or Base Clss
class Animal:
    def __init__(self):
        self.age = 1

    def eat(self):
        print("eat")


# child or Sub Class
class Mammal(Animal):

    # overriding
    def __init__(self):
        super().__init__()
        self.weight = 2

    def walk(self):
        print("ealk")


m = Mammal()
m.eat()
m.walk()
print(m.age)

print(isinstance(m, Animal))

print(issubclass(Mammal, Animal))

print(m.weight)
```
---
Tip! Use mulitlevel Inheritance only upto two to three levels.
---
---

## **Mulitple Inheritance**
Use multiple inheritance if parent classes have nothing in common like here Flyer and Swimmer classes have nothing in common.
```
class Flyer:
    def fly(self):
        print("fly")


class Swimmer:
    def swim(self):
        print("swimm")


class FlyFish(Flyer, Swimmer):
    pass  # pass do nothing only satement


flyFish = FlyFish()
flyFish.swim()
flyFish.fly()
```
---
## **Good Example of Inheritance with Custom Exception**
```
# Customer Exception
class InvalidOperationalError(Exception):
    pass


# parent or base class
class Stream:
    def __init__(self):
        self.opened = False

    def open(self):
        if self.opened:
            raise InvalidOperationalError("Stream is already opened")
        self.opened = True

    def close(self):
        if not self.opened:
            raise InvalidOperationalError("stream is already closed")
        self.opened = False


class FileStream(Stream):
    def read(self):
        print("Reading data from file")


class NetworkStream(Stream):
    def read(self):
        print("Reading data from network")
```
---
## **Abstract Class**
An abstract class is a class that contains at least one abstract method. An abstract method is a method that is declared, but not implemented in the code.<br/>
or
<br/>
An abstract type is a type in a nominative type system that cannot be instantiated directly; a type that is not abstract – which can be instantiated – is called a concrete type. Every instance of an abstract type is an instance of some concrete subtype

```
from abc import ABC, abstractmethod


# Customer Exception
class InvalidOperationalError(Exception):
    pass

# parent or base class drived from ABC (abstract base class) so noe this is abstract class
class Stream(ABC):
    def __init__(self):
        self.opened = False

    def open(self):
        if self.opened:
            raise InvalidOperationalError("Stream is already opened")
        self.opened = True

    def close(self):
        if not self.opened:
            raise InvalidOperationalError("stream is already closed")
        self.opened = False

    # to procide common interface to all sub classes of read methid we decorate it with abstractmethod and this method will have no implementation
    @abstractmethod
    def read(self):
        pass     # no implementation just pass

# Concrete class
class FileStream(Stream):
    def read(self):
        print("Reading data from file")

# Concrete class
class NetworkStream(Stream):
    def read(self):
        print("Reading data from network")


# stream = Stream()  #cannot be instansiated because Stream is abstract class
```
---
## **Polymorphism**
The word polymorphism means having many forms. In simple words, we can define polymorphism as the ability of a message to be displayed in more than one form. Real life example of polymorphism: A person at the same time can have different characteristic. Like a man at the same time is a father, a husband, an employee
```
<!-- In below example draw method has many forms -->

from abc import ABC, abstractmethod

class UIControl(ABC):   # abstract class

    @abstractmethod  # abstract method
    def draw(self):
        pass        # no implementation just pass


class TextBox(UIControl):   # concrete class
    def draw(self):
        print("TextBox")


class DropDownList(UIControl):  # concrete class
    def draw(self):
        print("Drop down list")


def draw(controls): # simple draw function
    for control in controls:
        control.draw()


ddl = DropDownList()
textBox = TextBox()
draw([ddl, textBox])
```
### **DUCK Typing**
Duck typing is a concept related to dynamic typing, where the type or the class of an object is less important than the methods it defines. When you use duck typing, you do not check types at all. Instead, you check for the presence of a given method or attribute.

To achieve polymorphic behaviour we don't necessarily need of base class because Python support DUCK Typing, but having the abstract base class is a good practice because it enforces the common interface or common contract across all its derivatives, like in above example we make sure all the derivative of UIControl class has a draw method. 

Example of Duck Typing
```
class TextBox:
    def draw(self):
        print("TextBox")


class DropDownList:
    def draw(self):
        print("Drop down list")


def draw(controls):
    for control in controls:
        control.draw()


ddl = DropDownList()
textBox = TextBox()
draw([ddl, textBox])
```
---

## **Extending Built-in Types**
In this, we drive class from built-in types like string, list and dictionary etc. by this we can have all properties of parent class but also can have extra properties that we define in the driven class, Below is a good example of this.
```
class Text(str):    # Drived from string class
    def duplicate(self):
        return self + self


class TrackableList(list):    # Drived from list class
    def append(self, object):
        print("append called")
        super().append(object)


text = Text("Python")
print(text.duplicate())
print(text.duplicate().lower())

list = TrackableList()
list.append("1")
```
---
## **Data Classes**
If we are working with classes that only have data and no method we should use named tuple instance with this we will write less code, named tuples are immutable once we create them we cannot modify them.
```
from collections import namedtuple

Point = namedtuple("point", ["x", "y"])


p1 = Point(x=1, y=4)
p2 = Point(x=1, y=4)

print(p1.x, p1.y)
print(p1 == p2)
```
---
## **Modules**

### Import modules
```
<!-- Two ways to import modules from another files -->

1- 
from file2 import sales_tax  # Importing from file2
sales_tax()  # calling simply 

2- 
import file2  # Importing 
file2.sale_tax()  # calling using dot notation
```
### Relative and Absolute imports
```
# Absolute import, here ecommerce and customer is directory and contact is module (file)
from ecommerce.customer import contact

# Relative import
from ..cusomter import contact
```
---

## **Paths, Files and Directories**
https://docs.python.org/3/library/pathlib.html
```
from pathlib import Path #importing Path Module

1- path = Path(r"C:\Program Files\Micrpspft")  # absolute path for windows
2- path = Path("/usr/local/bin")  # absolute path for MAC or LINUX
3- path = Path()  # path object that represent the current folder
4- path = Path("ecommerce/__init__.py")  # related path
5- path = Path() / "ecommercer" / "__init__.py"  # we can combine path object together
6- path = Path.home()  # Home directory of current user
```
### Important Members of Path class
```
from pathlib import Path

path = Path("ecommerce/__init__.py")  # related path
print(path.exists())
print(path.is_file())
print(path.is_dir())
print(path.name)
print(path.stem)
print(path.suffix)
print(path.parent)

path = path.with_name("file.txt")  # adding file.txt in path
print(path)
print(path.absolute())

path = path.with_suffix(".txt")  # to change the extension of the file
print(path)
print(path.absolute())
```
### Working with Directories
```
from pathlib import Path

path = Path("ecommerce")  # related path
path.exists()
path.mkdir()
path.rmdir()
path.rename("new_name")

path.iterdir()  # with this we can get the files and directories in this path
for p in path.iterdir():
    print(p)
# or
paths = [p for p in path.iterdir()]  # all directoris and files
paths = [p for p in path.iterdir() if p.is_dir()]  # getting only directories

# iterdir doesnot support search so for this we will use glob()
py_files = [p for p in path.glob("*.py")]
py_files = [p for p in path.rglob("*.py")] # for search recursively use rglob() methid

print(py_files)
```
---
### Working with files
```
from pathlib import Path
from time import ctime

path = Path("ecommerce/__init__.py")

path.exists()
path.rename("new_name.txt")
path.unlink()  # to delete file
path.stat()  # returnd information about file
print(ctime(path.stat().st_atime))  # printing file creation time

# file reading and writing in below we does not need to open and close the file, all this login happen behind the scene
path.read_bytes()  # return content of the file as byte object representing binary data
path.read_text()  # return the content of the file as a string
path.write_text("writing something")  # write some textual data to file
path.write_bytes("some binary data")

<!-- Copy content from one to another file -->
from pathlib import Path
import shutil
source = Path("ecommerce/__init__.py")
target = Path() / "__init__.py"

# 1st approach
target.write_text(source.read_text())

# 2nd and better approach
shutil.copy(source, target)
```
---
## **Working with Zip Files**
```
from pathlib import Path
from zipfile import ZipFile

# creating zip file of ecommerce directory (using with no need to close file)
with ZipFile("files.zip", "w") as zip:
    for path in Path("ecommerce").rglob("*.*"):
        zip.write(path)

# reading content of zip file
with ZipFile("files.zip") as zip:
    print(zip.namelist())
    info = zip.getinfo("ecommerce/__init__.py")
    print(info.file_size)
    print(info.compress_size)

# extracting files from zip file
with ZipFile("files.zip") as zip:
    zip.extractall("extract")
```
---
## **Working with CSV Files**
```
import csv

# writing in csv File
with open("data.csv", "w") as file:
    writer = csv.writer(file)
    writer.writerow(["Transaction_id, product_id, price"])
    writer.writerow([1000, 1, 1])
    writer.writerow([1231, 2, 4])

with open("data.csv") as file:  # opening file in reading mode
    reader = csv.reader(file)
    # print(list(reader))
    for row in reader:
        print(row)
```
---
## **Working with JSON files**
```
<!-- Writing into json file  -->

import json
from pathlib import Path

movies = [
    {"id": 1, "title": "Terminator", "year": 1989},
    {"id": 2, "title": "Cop", "year": 1993}
]

data = json.dumps(movies)
Path("movies.json").write_text(data)


<!-- Reading from JSON file -->

import json
from pathlib import Path

data = Path("movies.json").read_text()
movies = json.loads(data)
print(movies)
print(movies[0]["title"])
```
---
## **Working with SQLite**
https://sqlitebrowser.org/
```
<!-- writing into .sqlite3 file -->

import sqlite3
import json
from pathlib import Path

movies = json.loads(Path("movies.json").read_text())

with sqlite3.connect("db.sqlite3") as conn:
    command = "INSERT INTO Movies VALUES(?, ?, ?)"
    for movie in movies:
        conn.execute(command, tuple(movie.values()))
    conn.commit()


<!-- Reading from .sqlite3 file -->

import sqlite3
import json
from pathlib import Path

with sqlite3.connect("db.sqlite3") as conn:
    command = "SELECT * FROM Movies"
    cursor = conn.execute(command)

    # for row in cursor:
    #     print(row)

    movies = cursor.fetchall()
    print(movies)
```
---
### **Convert xlsx to csv**
pip install openpyxl
```
## XLSX TO CSV
import openpyxl

filename = 'appending.xlsx'

## opening the xlsx file
xlsx = openpyxl.load_workbook(filename)

## opening the active sheet
sheet = xlsx.active

## getting the data from the sheet
data = sheet.rows

## creating a csv file
csv = open("data.csv", "w+")

for row in data:
    l = list(row)
    for i in range(len(l)):
        if i == len(l) - 1:
            csv.write(str(l[i].value))
        else:
            csv.write(str(l[i].value) + ',')
        csv.write('\n')

## close the csv file
csv.close()
```
---
## **Working With Time**
### time
```
import time

def send_emails():
    for i in range(10000):
        pass

start = time.time()     # Return current Datetime as TimeStamp
send_emails()
end = time.time()

duration = end - start
print(duration)

```
### DateTime
strptime: https://www.programiz.com/python-programming/datetime/strptime
```
from datetime import datetime
import time

dt = datetime(2020, 1, 1)
dt = datetime.now()
dt = datetime.strptime("2020/12/12", "%Y/%m/%d")
dt = datetime.fromtimestamp(time.time())
print(dt)
print(f"{dt.year}/{dt.month}")
print(dt.strftime("%Y/%m"))

```
### TimeDelta
```
from datetime import datetime, timedelta

dt1 = datetime(2018, 1, 1) + timedelta(days=1, seconds=1000)
print("1st DateTime", dt1)
dt2 = datetime.now()
print("Curret DateTime", dt2)

duration = dt2 - dt1
print(duration)
print("days", duration.days)
print("seconds", duration.seconds)
print("total_seconds", duration.total_seconds())
```
---
## **Random**
```
import random
import string

print(random.random())  # random decimal number
print(random.randint(1, 10))  # random between 1 to 10
print(random.choice([1, 2, 3, 5]))  # will pick 1 element from list
print(random.choices([1, 2, 3, 4, 5], k=2))  # will pick 2 random elements
# will pick 2 random elements
print("".join(random.choices("abakhdlajshdias", k=4)))
print(string.digits)
print("".join(random.choices(string.ascii_letters + string.digits, k=4)))

# shufling
numbers = [1, 2, 3, 5]
random.shuffle(numbers)
print(numbers)

```
---
## **Open Web Browser in pythin script**
```
import webbrowser

print("Deployment Completed")
webbrowser.open("http://github.com")
```
----
## **Sending Email**
```
# 1st allow less secure app access or create app Passwords to send email
# https://support.google.com/accounts/answer/185833?hl=en
# https://myaccount.google.com/u/1/security

from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.mime.image import MIMEImage
from pathlib import Path
import smtplib


message = MIMEMultipart()
message["from"] = "Zahid Ali"
message["to"] = "target_email"
message["subject"] = "This is a test"
message.attach(MIMEText("body"))
# sending image in body, read_bytes return all data of image in binary
message.attach(MIMEImage(Path("DocOCR.png").read_bytes()))

with smtplib.SMTP(host="smtp.gmail.com", port=587) as smtp:
    smtp.ehlo()
    smtp.starttls()
    smtp.login("sender_email", "password")
    smtp.send_message(message)
    print("sent...")
```
### Using Template and Image
```
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.mime.image import MIMEImage
from pathlib import Path
from string import Template
import smtplib

template = Template(Path("template.html").read_text())


message = MIMEMultipart()
message["from"] = "Zahid Ali"
message["to"] = "engrzahid612@gmail.com"
message["subject"] = "This is a test"
message.attach(MIMEText(template.substitute({"name": "Zahid"}), "html"))
# read_bytes return all data of image in binary
# message.attach(MIMEImage(Path("DocOCR.png").read_bytes()))

with smtplib.SMTP(host="smtp.gmail.com", port=587) as smtp:
    smtp.ehlo()
    smtp.starttls()
    smtp.login("m.zahidalidev@gmail.com", "z@h1d@l1")
    smtp.send_message(message)
    print("sent...")

<!-- template.html file -->
<!DOCTYPE html>
<html lang="en">

<head>
</head>

<body>
    Hi <strong>$name</strong>, this is test email.
</body>

</html>
```
----
## **Command-line-arguments**
```
import sys

if (len(sys.argv) == 1):
    print("Usage python app.py <password>")
else:
    password = sys.argv[1]
    print("Password", password)
```
---
## **Running External Program**
```
import subprocess

completed = subprocess.run(
            ["dir"], 
            shell=True, 
            capture_output=True,
            text=True)
print("args", completed.args)
print("returncode", completed.returncode)
print("stderr", completed.stderr)
print("stdout", completed.stdout)
```
### Running other python script
```
<!-- app.py file -->
import subprocess

completed = subprocess.run(["python", "other.py"], shell=True, 
                capture_output=True,
                text=True
                )
print("args", completed.args)
print("returncode", completed.returncode)
print("stderr", completed.stderr)
print("stdout", completed.stdout)

<!-- other.py file -->
print("Here is a complicated script.")
```
### Error handling using try catch
```
import subprocess

try:
    # Below code will generate error because of "false" applied # as a argument and there is not command of false
    completed = subprocess.run(["false"], shell=True, 
                    capture_output=True,
                    text=True,
                    check=True
                    )
    print("args", completed.args)
    print("returncode", completed.returncode)
    print("stderr", completed.stderr)
    print("stdout", completed.stdout)
except subprocess.CalledProcessError as ex:
    print(ex)
```
---
# **Python Package Index**
https://pypi.org/

https://stackoverflow.com/questions/36835341/pip-is-not-recognized
## **requests**
```
* Use to send http requests

<!-- install requests-->
pip install requests

<!-- Update requests -->
pip install --upgrade pip

<!-- Check current packages -->
pip list

<!-- install specific version -->
pip install requests==2.9.0

<!-- install specific compatible version with 2.9 -->
pip install requests==2.9.*

<!-- install specific compatible version with 2 -->
pip install requests==2.*

<!-- Demo get request with requests -->
import requests
responce = requests.get("http://google.com")
print(responce)
```
---
# **Virtual Environment**
* To install different versions of a packages for different applications we need to create virtual environment 
```
<!-- Create Virtual Environment -->
1-  python -m venv env

<!-- Activate Virtual environment -->
2- env\Scripts\activate
2- (for MAC) source env\bin\activate

3- Now we can install packages only for current project like pip install requests==2.9.*.

4- Finally when we are done we need deactivate virtual environment so for this run command "deactivate"
```
## **pipenv** equalent to npm in python
* pipenv is dependency manager for python projects
by using this no need to remember above commands
```
1- pip install pipenv

<!-- Issue whilw creating virtual environment with pipenv solved -->
https://itqna.net/questions/16455/problems-trying-create-virtual-environment-pipenv

1- python -m venv .venv

2- pip install pipenv

3- Install packages with pipenv like "pipenv install requests==2.9.*"

4- activate virtual environment "pipenv shell"

5- Run command "exit" to exit from virtual environment

6- Reopen VS Code
```

**If not working with code runner then follow the following steps:**
```
1- To add code-runner.executorMap in setting.json file simply type "code-runner.executorMap" and hit enter vs code will automatically generate all settings for you.

2- change this line
"python": "python -u",

3- find path of venv dir by this command "pipenv --venv" and change path of python in setting.json.
like replace this settting
D:/Python/helloWorld/.venv/Scripts/python
=== paht of enve dir ===/Scripts/python
(In MAC) ===============/bin/python
```
* ###  Run **pipenv install** to install all dependencies of project.
* ### To Install exact same versions of packages run **pipenv install --ignore-pipfile** 
```
* pipenv graph (to see all dependencies)
* pipenv update (update all package)
* pipenv update packageName (to update specific package)
```
## **Publish Package to pypi.org**
```
1- Create account (https://pypi.org/)
2- pip install setuptools wheel twine
3- As a best practice we should create high level directory with the same name as our package and add source code files.
4- add __init__.py file so python will see this as a package 
5- To publish this package add three files at the root of project
    *(1- ) setup.py

    <!-- Setup file  -->
    import setuptools

    import setuptools
    from pathlib import Path

    setuptools.setup(
        name="zahidpdf",
        version=1.0,
        long_description=Path("README.md").read_text(),
        packages=setuptools.find_packages(exclude=["tests", "data"]) # Excluding two directories tests and data
    )

    *(2- ) create README.md  (will display at the home page of or package at pypi.org)
    *(3- ) LICENSE
        for license goto "https://choosealicense.com/" 

6- To build run this command "python setup.py sdist bdist_wheel"
7- Uploading package to pypi.org run this command "twine upload dist/*"
```
### **Docstring or Documentation String**
Add the discription about the methods etc. to show in a little tooltip window by intellicense to tell what this functions does, what parameters are and what its return etc to do this in python we have special format for documenting our code called docstring or documentation string its basically string with triple quotes (""").
```
eg. 
<!-- in pdf2text.py file -->

""" This module provides functions to convert a pdf to text """

def convert(path):
    """ 
    Convert the given pdf to text. 
    
    Parameters:
    path(str): The path to a pdf file.

    Returns:
    str: The content of the pdf file as a text.
    """
    print("pdf2text")

```
### **pydoc** to see the documentation of modules
```
eg. pydoc math

1- Add path of pydoc.bat file in environment variables to run pydoc command like in my case "C:\Users\Zahid Ali\AppData\Local\Programs\Python\Python37\Lib\site-packages\virtualenv\activation\batch"

2- run command "pydoc math" in cmd

3- write documentation in file by this command "pydoc -w math"

4- Loading the documentation for application as well python standard library in the web server run command "pydoc -p port_number" like "pydoc -p 4769" and hit enter and then enter "b" for open in browser and "q" for stop.
```
--- 
# **Python Popular Packages**
## **API**
End points that are publicaly accessible on the internet.<br>
APIs: https://www.yelp.com/developers, https://www.yelp.com/developers/documentation/v3
<br>

### **Yelp Api**
1- Create new app at yelp<br>
2- pipenv or pip install requests

getting Business through yelp api:
```
import requests

url = "https://api.yelp.com/v3/businesses/search"
api_key = "Api_key_here"

headers = {
    "Authorization": "Bearer " + api_key
}

params = {
    "term": "Barber",  # filter only search for barber
    "location": "NYC"  # specify location of lang and lot
}

responce = requests.get(url, headers=headers, params=params)
businesses = responce.json()["businesses"]

names = [business["name"]
         for business in businesses if business["rating"] > 4.5]
print(names)

```
## **Sending Text Messages using twilio**
https://www.twilio.com/

1- register and get phone number<br>
2- pip install twilio<br>
3- copy SID and auth Token from twilio dashboard console<br>
 
```
from twilio.rest import Client

account_sid = ""  # from twilio console
auth_token = ""  # from twilio console

client = Client(account_sid, auth_token)

call = client.messages.create(
    to="",
    from_="",  # twilio phone numer
    body="this is our first message"
)
```
## **Browser Automation with selenium**
1- pip install selenium<br>
2- Driver (piece of software to automate the spicific browser) https://pypi.org/project/selenium/<br>
To automate chrom, driver needed: https://sites.google.com/a/chromium.org/chromedriver/downloads

3- Details: https://selenium-python.readthedocs.io/  

4- Demo:-
```
from selenium import webdriver
from selenium.webdriver.common.keys import Keys

browser = webdriver.Chrome()
browser.get("https://github.com")

sign_link = browser.find_element_by_link_text(`"Sign in")
sign_link.click()

username_box = browser.find_element_by_id("login_field")
# username_box = browser.find_element_by_xpath(".//*[@id='login_field']")
username_box.send_keys("zahidalidev")
password_box = browser.find_element_by_id("password")
# password_box = browser.find_element_by_xpath(".//*[@id='password']")
password_box.send_keys("z@hid@l1")
password_box.submit()


# asster use to varify someting and browser.page_source return html content of webpage
assert "zahidalidev" in browser.page_source

# profile_link = browser.find_element_by_class_name("user-profile-link")
# link_label = profile_link.get_attribute("innerHTML")
# assert "zahidalidev" in link_label

browser.quit()  # to close the browser
```
## **Web Scraping**
To get the data from webpage Parse the html we want behind the webpage and get ride of all the html tags and extract actual data this technique is called web scraping, So we scrap all the html tags and get the actual data that we want.

### **Demo:**<br>
 We are going to write a program that will extract list of newest questions on stackoverflow.com (https://stackoverflow.com/questions), We refer this kind of program as a web crawler or web spider.

1- pip install beautifulsoup4
2- pip install requests

```
import requests
from bs4 import BeautifulSoup

responce = requests.get("https://stackoverflow.com/questions") # getting content of the page
soap = BeautifulSoup(responce.text, "html.parser")

questions = soap.select(".question-summary") # getting all questions

for question in questions:
    print(question.select_one(".question-hyperlink").getText()) # getting title with the class
    print(question.select_one(".vote-count-post").getText()) # getting vote with the class
```
## **Working with PDF**
1- pip install pypdf2

```
import PyPDF2

with open('first.pdf', "rb") as file:  # rb stand for read in binary
    reader = PyPDF2.PdfFileReader(file)  # for reading pdf file
    page = reader.getPage(0)
    page.rotateClockwise(90)

    writer = PyPDF2.PdfFileWriter()  # for writing pdf file
    writer.addPage(page)

    with open('rotated.pdf', 'wb') as output:  # wb for write binary
        writer.write(output)

# merging pdf file
merger = PyPDF2.PdfFileMerger()
file_names = ['first.pdf', 'second.pdf']
for file_name in file_names:
    merger.append(file_name)
merger.write('combined.pdf')
```
## **Working with Excel SpreadSheets**
1- pip install openpyxl
```
import openpyxl

# wb = openpyxl.Workbook()  # creating new empty workbook
wb = openpyxl.load_workbook('transactions.xlsx')  # loading existing workbook
print(wb.sheetnames)

sheet = wb['Sheet1']

# cell = sheet["a1"]  # 'a' is column and '1' is rown
cell = sheet.cell(row=1, column=1)
cell.value = 1  # changing the value of cell

# print(cell.value)
# print(sheet.max_column)
# print(sheet.max_row)

# 0 is index of new sheet 0 mean before firt sheet
# wb.create_sheet('Sheet2', 0)

# for row in range(1, sheet.max_row + 1):
#     for column in range(1, sheet.max_column + 1):
#         cell = sheet.cell(row, column)
#         print(cell.value)

# column = sheet['a']
# print(column)

# cells = sheet['a:c']  # columns from a to c
# print(cells)

# cells = sheet['1:3']  # rows from 1 to 3
# print(cells)

# cells = sheet['a1:c3']  # cells from a1 to c3
# print(cells)

sheet.append([1, 2, 3])  # to add the row at the end of sheet
# sheet.insert_rows()  # to add the row at given index
wb.save('transaction2.xlsx')
```
## **Command Query Separation Principle** 
It states that every method should either be a command that performs an action, or a query that returns data to the caller, but not both.

## **NumPy**
Heavily used in scientific computation.
Numpy provides multidimensional arrays that are super fast and take less memory plus they support variuos kind of mathematical operations that regular python list dont, its the core library for scientific computations.

**1- pip install numpy**<br>
If above latest version give error try installing by following command mean version 1.19.3<br>
**1- pip install numpy==1.19.3**
```
import numpy as np

# array = np.array([1, 2, 3])  # creating numpy array
# print(array)
# print(array.shape)

# new array with 3 rows and 4 columns and initializes with zeros
# array = np.zeros((3, 4), dtype=int)
# array = np.ones((2, 4), dtype=int)
# array = np.full((3, 5), 5, dtype=int)  # fill with 5

# array = np.random.random((2, 5))  # 2 by 5 array with random numbers
# print(array[0, 3])
# print(array > 0.3)  # return true or false
# print(array[array > 0.3])  # return the values greater then 0.3
# print(np.sum(array))  # return the sum of all elements in the array
# print(np.floor(array)) # return the floor of elements
# print(np.ceil(array))  # return the ceil of elements
# print(np.round(array))  # return the numbers after rounding

first = np.array([1, 2, 3])
second = np.array([1, 2, 3])
# print(first+second) # add corresponding elements of both
print(first+2)  # add 2 in each item of array
```
# **Web Application With Django**

## **Installation**
1- Create Virtual Enviroment
2- pip install django==2.1
3- django-admin startproject vidly .  # creating project

**Installed Project Include:**<br>
1- Manage.py # To perform administarot tasks such as starting our web server or migrating database, populating with data and so on.
2- __init__.py # tells python to treat directory as package <br>
3- settings.py # In this file we have various configuration settings for project.<br> 
4- urls.py # In this we define various url endpoints for our project 
5- wsgi.py # Web Server Gateway Interface the purpose of this file to represent standarad interface between application written in python and web servers.
5- To Start Development server run command "python manage.py runserver" this will start on port number 8000 if we want to specify own port number then run command like this "python manage.py runserver 8080".