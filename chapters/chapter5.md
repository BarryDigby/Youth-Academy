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

</exercise>

<exercise id="2" title="Case Study: Iris Classification">

## Training the model

I have saved the previously created subsets of the iris dataset `train` and `test` as `knn_intro.RData`, there is no need to re-type the code to split the dataframe. See the above section for inputs to the `knn3()` function, which we will apply below. 

<codeblock id="05_02">
</codeblock>

***

## Confusion Matrix

Notice that `model_predictions` returns the predicted labels for each sample. We can compare this to the original, correct, **known** class labels of the training dataset using a <span style="color:blue">confusion matrix</span>. **A confusion matrix shows the ways in which our classification model is confused when it makes predictions.**

<figure>
  <img src="knn_cf_setosa.png" width="100%"/>
  <figcaption><b>Figure 4</b>: Confusion matrix, focusing on setosa species.</figcaption>
</figure>

<figure>
  <img src="knn_cf_versicolor.png" width="100%"/>
  <figcaption><b>Figure 5</b>: Confusion matrix, focusing on versicolor species.</figcaption>
</figure>

<figure>
  <img src="knn_cf_virginica.png" width="100%"/>
  <figcaption><b>Figure 6</b>: Confusion matrix, focusing on virginica species.</figcaption>
</figure>

***

The above is a simple view of a confusion matrix. They can be used to calculate numerous metrics such as precision, recall, sensitivity, specificity etc, however, for now we will focus on accuracy:

```R
# recall 105 samples in training data
# 3 samples were incorrectly labelled by our model
> 102/105
[1] 0.9714286
```

i.e 97.14% model accuracy which was reported using `print(train_cfm)`.

## Testing our model

We have trained our model, and assessed how well it performed on the training set. Now we will use the model to predict the unseen test dataset. Recall we have the 'answers to the test' for the test dataset, and can evaluate the models performance using a confusion matrix again.

<codeblock id="05_03">
</codeblock>

***

Our model reports an accuracy of 97.78%, great! 

## Predicting unseen data

As a proof of concept, lets add a new sample to the test dataset, a flower whose species is unknown (recall **Figure 2**).

<codeblock id="05_04">
</codeblock>

***

The new data sample we collected is the last row of our test dataset (we manually added it), and as such will be the last item in the vector `test_predictions`. 



Please add the line of code: `print(test_predictions[length(test_predictions)])` to the code block above to reveal which species our algorithm classified the new data sample as. 

</exercise>

<exercise id="3" title="Worksheet">

This week we will use a real dataset to train a KNN model. The dataset description is given below: 

> The dataset consists of 18 samples: 6 Clone1 samples, 6 Clone9 samples, and 6 Control samples that were derived using prostate cancer cell lines. 

* Clone1 cells are highly resistant to enzalutamide treatment.

* Clone9 cells are moderately resistant to enzalutamide treatment.

* Control cells are enzalutamide sensitive.

The goal of the dataset is to classify new prostate cancer patients into one of the 3 groups based on their gene expression profile, which helps to identify if they are a good fit for enzalutamide treatment.

## Sample Heatmap 

Let's begin by inspecting the sample heatmap. We expect `Clone1`, `Clone9` and `Control` samples to cluster together when hierarchical clustering is performed. 

<codeblock id="05_05">
</codeblock>

***

Take moment to inspect the heatmap.

1. Do you think the clustering worked?

2. One group of samples is very different to the others. Which group is it?

3. Which groups might be difficult to distinguish?


## Feature Heatmap 

In the sample heatmap we could see that one group is very different to the others. Classifying patients into this group should be easy. 

Let's make a feature heatmap to inspect the variables in the dataset.

<codeblock id="05_06">
</codeblock>

***

You should be able to see 3 clear red blocks where gene expression is high in a certain group but low in the others. However, there are 5 genes in the dataset that show variable expression across the three groups (e.g for the gene, there are red cells across all 3 groups - the genes expression is not unique to one group).

1. Which 5 genes are variable across the three groups?


## Split Dataset for Model 

We will keep all genes in the dataset for now to see if the model can overcome the variable genes.

The first task is to split the dataset into a training and test set:

<codeblock id="05_07">
</codeblock>

***

1. Is the training dataset balanced? (equal number of groups?) Hint: use `table(train$group)`.

## Create model using training data

Now fill out the code block to create our model based on the training data:

<codeblock id="05_08">
</codeblock>

***

Please ask for help if you are struggling to fill the code block above.

***


1. Try different values for `K`. What do you observe?

2. What value of `K` gives the best accuracy?


## Test model using test data

Great! Now we have a model that can classify our test data. Let's test it on the test data:

<codeblock id="05_09">
</codeblock>


</exercise>