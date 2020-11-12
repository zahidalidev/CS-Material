# **Machine Learning**
The art and science of:<br>

- Giving computers the ability to learn to make decesions from data
- Withot being explicitly programmed.<br>

Example: <br>
- Learning to predict email is span or not (trying to predict particular class label that is span or not span this is **Supervised** learning)
- Clustring Wikipedia entries into different categories (there is no label sp this **unSupervised** learning)
---
### **Supervised Learning**
```
* In which the data comes with additional attributes that we want to predict.
* When there are labels present 
```

### **Unsupervised Learning**
```
* when there are no labels present like Uncovering hiddern patterns from unlabel data

Example: Grouping Customers into distinct categories (Clustring) based on their perchasing behaviour without knowing in advance what these categories maybe. 
```
### **Reinforcement Learning**
```
Software agents interact with environment these agents are able to automatically figure out how to optimize their behaviour given a system of rewards and punishement.
```
---
## **Supervised Learning**
In supervised learning, we have several data points or samples described using predictor or features and a target variable
```
* Predict Variables/features and a target variables.
* Aim: Predict the target variable, given the predictor variables

Supervised Learning problem can be either:
    -> Classification: Target variable consist of categories (like click or no Click, spam or no spam)
    -> Regression: Target  variable is continous (like price of house )

* Features = Predictor Variable = independent variables
* Target variable = dependent variable = responce variable
```
----
# **Exploring data analysis**

## **Iris Dataset**
### -> Features
```
* Petal length
* Petal width 
* Sepal length 
* Sepal width
```
### -> Target Variables: Species
```
* 1- Versicolor
* 2- Viriginica
* 3- Setosa
```
-> sklearn
```
* Is a free software machine learning library for the Python programming language. It features various classification, regression and clustering algorithms including support vector machines, random forests, gradient boosting, k-means and DBSCAN, and is designed to interoperate with the Python numerical and scientific libraries NumPy and SciPy.

The functionality that scikit-learn provides include:

Regression, including Linear and Logistic Regression
Classification, including K-Nearest Neighbors
Clustering, including K-Means and K-Means++
Model selection
Preprocessing, including Min-Max Normalization


* Is a library in Python that provides many unsupervised and supervised learning algorithms. It’s built upon some of the technology you might already be familiar with, like NumPy, pandas, and Matplotlib!
```
-> numpy
```
Is a library for the Python programming language, adding support for large, multi-dimensional arrays and matrices, along with a large collection of high-level mathematical functions to operate on these arrays
```
-> Code:
```
from sklearn import datasets
import pandas as pd
import numpy
import matplotlib.pyplot as plt

plt.style.use('ggplot')
iris = datasets.load_iris()
# print(iris.keys())
# print(type(iris.data), type(iris.target))

# print(iris.data.shape)
# output (150, 4) mean 150 rows and 4 columns, here samples are in rows and features are in columns

print(iris.target_names)
# Target variable is included ['setosa' 'versicolor' 'virginica'] as 0 for setosa, 1 for versicolor and 2 for virginica
```
### Exploring Data Anylasis (EDA)
```
from sklearn import datasets
import pandas as pd
import numpy
import matplotlib.pyplot as plt

plt.style.use('ggplot')
iris = datasets.load_iris()

X = iris.data
y = iris.target

# We will build a DataFrame of the feature data using pd dot DataFrame and aslo passing columns names
df = pd.DataFrame(X, columns=iris.feature_names)
# print(df.head())

# Pandas function scatter_matrix to visualize our data set
# We pass it the our DataFrame, along with our target variable as argument to the parameter 'c' (color)
# ensuring that our data points in our figure will be colored by their species, we also pass list of figsize
# which specfies the size of our figure as well as a marker size and shape
_ = pd.plotting.scatter_matrix(df, c=y, figsize=[8, 8], s=150, marker='D')
```

# **Classification Challenge**
https://campus.datacamp.com/courses/supervised-learning-with-scikit-learn/classification?ex=6

**Training Data** = already labeled data

<br>

### **Classifier**
```
* We will choose simple algorithm called K-Nearest Neighbours (KNN), The basic idea of KNN is to predict the label of any data point by looking at the K. for example 3 closest labeled data points and getting them to vote on what label the unlabeled point should have.
eg. mean if we have a point in the middle and two red and 1 green are the closet points so if k is 3 then its mean the midde point should be red because in the closet points red have mejority and if we have 3 green and 2 red closet points and k is 5 then middle point should be green because here green points have mejority.
```

### **Scikit-learn fit and predict**
```
* All machine learning models implemented as python classes
  -> They implented the algorithm for learning and predicting.
  -> Store the information learned from the data

* Training a model on the data = "fitting a model to the data 
    -> we use fit method ".fit()" to do this in scikit-learn

* To predict the label of new data we use .predict() method
```

## **Using scikit-learn to fit a classifier**
```
from sklearn import datasets
from sklearn.neighbors import KNeighborsClassifier
import pandas as pd
import numpy
import matplotlib.pyplot as plt
import numpy as np

plt.style.use('ggplot')
iris = datasets.load_iris()

knn = KNeighborsClassifier(n_neighbors=6)
knn.fit(iris['data'], iris['target'])

X_new = np.array([[5.6, 2.8, 3.9, 1.1],
                  [5.7, 2.6, 3.8, 1.3],
                  [4.7, 3.2, 1.3, 0.2]])

# print(X_new.shape)
# output: (3, 4), mean 3 observations and four features

prediction = knn.predict(X_new)
print('Prediction: {}'.format(prediction))

# ouput: Prediction: [1 1 0]
# three by one array with a prediction for each observation for row in X_new, 1 correspons to Versicolor for the first two observations and 0 which corresponds to setosa for the third.
``` 
---

# **New Course ML** 

## **Machine Learning**
ML is a subset of AI, In ML we build model and give it a lot of data like we give it a lots of images of cats and dogs and then our model will then find and learn patterns in input data so we can give it a new picture of cat that it has not seen before and ask it, is it cat or dog and it will tell us with certain level of accuracy. the more input data we give the more accurate our is going to be.

---
## **Machine Learning Steps**
1- Import the data which often come in the form of csv file. </br>

2- Clean the data it involves tasks such as removing duplicating data, removed irrelevant data and remove incomplete data or modify. If our data is text-based like the names of countries or genres of music we need to ceonvert them to numarical values.</br>

3- Split The data into Training/Test Sets (to make sure our model produces the right result).</br>

4- Creata a Model this involves selecting an algorithm to analyze the data. there are so many different machine learning algorithms out there such as decision trees, neural network and so on. Each algorithm has prons and cons in term of accuracy and performance so the algorithm we choose depends on the problem we are trying to solve and input data, we dont need to explicitly program and algorithm there are libraries out there that provide these algorithms the most popular one is scikit-learn. So we build a model using an algorithm.</br>

5- Train the Model. So we fitted our training data our model then look for a patterns in the data. </br>

6- Make Predictions. </br>

7- Evaluate and Improve to its accuracy if its not accurate wo either fine tune our model or select a different algorithm.

---

## **Popular Python Libraries for ML**

### **1- Numpy**
Provides multi-dimensional array 

### **2- Pandas**
Data analysis library that provides concept called data frame, data frame is two dimensional data structure similar to an excel spraedsheet, so we have rows and columns, we can select data in a row or a column or range of rows and columns popula in ML and Data Science.

### **3- Matplotlib**
Two dimensional plotting library for creating graphs and plots.

### ** 4- Scikit-learn**
One of the most popular machine learning library that provides all these common algorithms like decision trees neural network and so on.
---
---
## **Installing Jupyter**
1- Download anaconda distribution 
https://www.anaconda.com/products/individual
https://repo.anaconda.com/archive/

It will install Jupyter as well all popular data science libraries like numpy, pandas and so on.
2- run by terminal by running command "jupyter notebook" of open from start menue and create new notebook.

----
## **Importing a Dataset**
To download dataset goto https://www.kaggle.com/

run the below code in jupyter notebook
```
import pandas as pd
df = pd.read_csv('vgsales.csv')
# df
# df.shape # to see numbers of rows and columns
# df.describe() # to get the basic statistics about our data
#df.values
```
---
# **Real ML Problem**
When user signup we will ask age and gender and base on their profile we recommend various music album they will like to buy.<br/>
We will build model and will feed this model with some sample data base on existing user. Our model will learn the pattern in our data so we can ask it to make predictions

## **Steps**
1- Import the Data. <br>
2- Clean the data. <br>
3- Split the data into training and Test Sets.<br>
4- Select Machine learning algorithm and build the model. <br>
5- Train the model. <br>
6- Make predictions. <br>
7- Evaluate and Improve to its accuracy if its not accurate wo either fine tune our model or select a different algorithm. <br>

### **1- Import Data**
```
import pandas as pd
music_data = pd.read_csv('music.csv')
music_data
```
### **2- Clean or prepare the data**
The data we have is already clean and filled but we have to split this data sets into two seperate sets one for input and the other for output.
```
import pandas as pd
music_data = pd.read_csv('music.csv')
X = music_data.drop(columns=['genre']) # input data
y = music_data['genre'] # output data
```

### **4- Build A Model using machine learning algorithm**
We are going to use decision tree that is already implemented in scikit-learn 
```
import pandas as pd
from sklearn.tree import DecisionTreeClassifier

music_data = pd.read_csv('music.csv')
X = music_data.drop(columns=['genre'])
y = music_data['genre']

model = DecisionTreeClassifier()
```
### **5- Train the model**
Train the model so its learn pattern in the data.
```
import pandas as pd
from sklearn.tree import DecisionTreeClassifier

music_data = pd.read_csv('music.csv')
X = music_data.drop(columns=['genre'])
y = music_data['genre']

model = DecisionTreeClassifier()

model.fit(X, y) # X is input and y is output
```
### **6- Make predictions**
```
import pandas as pd
from sklearn.tree import DecisionTreeClassifier

music_data = pd.read_csv('music.csv')
X = music_data.drop(columns=['genre'])
y = music_data['genre']

model = DecisionTreeClassifier()

model.fit(X, y)

predictions = model.predict([[21, 1], [22, 0]])
predictions
```
### **-7 and -3 Evaluate and Improve (Calculating Accuracy), Split data into Training and Test Sets.**
```
import pandas as pd
from sklearn.tree import DecisionTreeClassifier # to build model
from sklearn.model_selection import train_test_split # for split dataset into train and test
from sklearn.metrics import accuracy_score

music_data = pd.read_csv('music.csv') # reading csv file
X = music_data.drop(columns=['genre']) # getting dataset without genre column
y = music_data['genre'] # getting only genre column

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2)

model = DecisionTreeClassifier() # build model

model.fit(X_train, y_train) # train model 

predictions = model.predict(X_test) # making predictions
score = accuracy_score(y_test, predictions)
score
```
