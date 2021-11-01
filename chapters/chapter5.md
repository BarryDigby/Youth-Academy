---
title: 'Week 5: Machine Learning Part II' 
description: ''
prev: /chapter4
next: /chapter6
id: 5
type: chapter
---

<exercise id="1" title="Introduction">

Last week we covered the concept of distances in euclidean space, and how machines interpret similarity and dissimilarity. We also saw how machines partition datasets into clusters via hierarchical clustering.

***

This week we will cover classification using K-nearest neighbours. Many of the concepts from last week are carried forward to this week, however the objective of classification tasks is not to perform an exploratory data analysis, but rather we are interested in training a model to correctly place new 'unseen data' into the correct group (flower species, cancer type, etc.).

***

Consider the image below containing a subset of the Iris dataset. We can see how each flower species clusters together. 

<figure>
  <img src="knn_eg_1.png" width="100%"/>
  <figcaption><b>Figure 1</b>: Floral species clustered using PCA</figcaption>
</figure>

***

We now have a new, unlabelled data point in our dataset:

<figure>
  <img src="knn_eg_2.png" width="100%"/>
  <figcaption><b>Figure 2</b>: New sample added to dataset.</figcaption>
</figure>

***

Which group do you think the new data point belongs to? 

<choice id="1">
<opt text="Setosa" correct=true>
Yes</opt>
<opt text="Virginica">
Not quite</opt>
<opt text="Versicolor">
Not quite.</opt>
</choice>

It was easy for us to use our eyes and identify the floral species the new data point is most likely a member of. However, machines do not have eyes, so how do they decide to label the new data point? 

# KNN

K-nearest neighbours operates by identifying the closest neighbouring data points, sorting them by euclidean distance and using the top **_k_** labelled points to make a decision on the unseen dataset. The choice of **_k_** is up to the user i.e how many data points should we consider for voting? We will discuss how to choose the best value for K in later sections. See below the KNN algorithm in operation when **_k_**=3.

<figure>
  <img src="knn_eg_4.png" width="100%"/>
  <figcaption><b>Figure 3</b>: KNN algorithm checks the label of the nearest neighbours. Operating under the assumption that data within a cluster share similar features, the closest group in euclidean space is the best candidate for the new data.</figcaption>
</figure>

***

## Implementation

To use the `KNN` algorithm in R, we will be using the `knn3()` function from the `"caret"` package. **Please remember when using machine learning that in the dataframe, samples must be rowside, and columns must contain the variables/features - including a column of class labels.**  The function takes as arguments: 

```R
knn3(train, training labels, k)
```

- `train`: The numerical columns of the training dataset representing the features.

- `training labels`: The categorical column of the training datset containing sample labels.

- `k`: user defined value for **_k_**.

***

## Training and Test Sets: Splitting Data 

In the previous section we introduced the term `"training dataset"`. When designing a KNN model, we start with a dataset for which we know the class labels (Iris dataset, TCGA dataset) so we can assess the accuracy of our model. The dataset is split into 2 partitions:

- The `training set` (70-80%) is used to train our model. 

- The `test set` (30-20%) is used to test our model. 

There are many ways to go about splitting your dataset into a 20%/80% split but the main thing to bear in mind is that your **test data is representative of the data set as a whole. In other words, don't pick a test set with different characteristics than the training set.** Specifically, we are referring to the class labels. Do not pick a training or test dataset that is imbalanced. 

#### Train/Test split in action

1. Load the necessary datasets and libraries.

2. Calculate how many samples are needed to account for 70% of the dataset (`train_size`). Following this, randomnly sample `"train_size"` numbers between the range of the dataset length. 

3. Subset (to keep/to remove) the main dataset using the `train_idx` rownames we generated in step 2.

4. Check that there are roughly the same number of labels for each class.

<codeblock id="05_01">
</codeblock>

***

Uncomment the lines of code in the codeblock above and answer the following:

1. What is the value for `train_size` and what does it represent?

    <choice id="2">
    <opt text="105, it represents the number of rows that compose 70% of the dataset." correct=true>
    Yes, train_size is a numeric variable (105) which we will use to subset 70% of the original dataframe.</opt>
    <opt text="105, it represents 70% of the dataset.">
    Not quite, the variable itself is just a numeric. We have yet to subset the dataframe with it.</opt>
    </choice>

2. Run the line `print(train_idx)`, what does the output represent?

    <choice id="3">
    <opt text="Randomnly generated numbers from 1 - 150" correct=true>
    Yes, this is simply a numerical vector containing randomnly sampled numbers from 1-150.</opt>
    <opt text="The rownames of our 70% dataset subset">
    Not quite, the rownames of the iris dataset are indeed numeric, which is a little confusing. But we have not yet subset the iris dataset so train_idx is just a vector.</opt>
    </choice>

3. Are the training and test partitions reasonably well balanced? 

***
## Training the model

<codeblock id="05_02">
</codeblock>

</exercise>