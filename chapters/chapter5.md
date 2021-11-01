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

## KNN

K-nearest neighbours operates by identifying the closest neighbouring data points, sorting them by euclidean distance and using the top **_k_** labelled points to make a decision on the unseen dataset. The choice of **_k_** is up to the user i.e how many data points should we consider for voting? We will discuss how to choose the best value for K in later sections. See below the KNN algorithm in operation when **_k_**=3.

<figure>
  <img src="knn_eg_4.png" width="100%"/>
  <figcaption><b>Figure 3</b>: KNN algorithm checks the label of the nearest neighbours. Operating under the assumption that data within a cluster share similar features, the closest group in euclidean space is the best candidate for the new data.</figcaption>
</figure>


</exercise>