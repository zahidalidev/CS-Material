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