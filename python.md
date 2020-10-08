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










