---
title: 'Week 4: Machine Learning Part I' 
description: ''
prev: /chapter3
next: /chapter5
id: 4
type: chapter
---

<exercise id="1" title="Introduction">

This week we will cover the machine learning task of <span style="color:blue">clustering</span>, which is a form of <span style="color:blue">classification</span>. 

Clustering is a form of <span style="color:blue">unsupervised machine learning</span>. This means we are trying to identify patterns in data that place samples/patients into groups according to common features/variables.

Let's start with a simple example most of you might know - the sorting hat in Harry Potter. The sorting hat is analogous to a clustering algorithm that sees new data (students) and matches them to the correct house based on their personality traits - which are the features/variables the hat uses to measure students suitabiltiy to a house.

<figure>
  <img src="sorting.jpg" width="100%"/>
  <figcaption><b>Figure 1</b>: 10 points for Griffindor.</figcaption>
</figure>

***

This week we will be using gene expression datasets to test out a clustering algorithm. In the image below, we can see how the hierarchical clustering algorithm has placed the 4 patients into 2 groups, according to its dendogram tree. 

<figure>
  <img src="dend.png" width="100%"/>
  <figcaption><b>Figure 2</b>: Clustering of toy dataset.</figcaption>
</figure>

***

Before jumping into the actual clustering algorithm, let's first look at the data.
# Visualising Trends

Consider the plot below:

<figure>
  <img src="clust_patients.png" width="100%"/>
  <figcaption><b>Figure 1</b>: Gene expression profile of 4 patients</figcaption>
</figure>

***

<details>
<summary><b>&raquo; Code to produce plot</b></summary>

(Hit reset if empty)

<codeblock id="04_01">
</codeblock>

</details>

***

Let's pretend we can only characterise patients using 3 genes (variables): `IRX4`, `PAX6` and `OCT4`. Answer the questions about the trends in the dataset in the zoom poll. 

We will cover using a scatter plot matrix and a parallel coordinates plot to visualise the trends in the toy dataset:

# Scatter Plot Matrix 

Scatter plot matrices (SPLOM) are useful for visualising two variables side-by-side. In our toy dataset, we can see that patient 1 and 2 (black and red dots) are close together in 2-D space. The same is true for patients 3 & 4 (green and blue dots) in 2-D space. 

What do I mean by 2-D space? We are plotting two variables side-by-side - meaning the number of dimensions used is only 2.

***

Do not worry about the code, I will never ask you to make the code yourself. Focus on the plots that are generated.

<codeblock id="04_02">
</codeblock>

See the image below on how to interpret the plot: 

<figure>
  <img src="splom_read.png" width="100%"/>
  <figcaption><b>Figure 2</b>: Reading a SPLOM.</figcaption>
</figure>

***

Try to read the scatter plot yourself, and if in doubt, consult the original barplot of the dataset below. 

<figure>
  <img src="clust_patients.png" width="100%"/>
  <figcaption><b>Figure 1(re-used)</b>: Gene expression profile of 4 patients</figcaption>
</figure>

***

Answer the zoom poll questions about patients gene expression to double check your understanding of the plot.

***

# Parallel Coordinate Plots

Parallel coordinate plots have the same function as SPLOMs using a different visualisation style. 

<codeblock id="04_03">
</codeblock>


The plot offers no new information, it is just a different way of visualising the variables in the data. Each line represents a patient - and where the expression value of a gene falls within the range of the dataset.

# Distance Metrics

By making plots, we were able to visually assess how similar or dissimilar patients are.

How do we express 'similarity' computationally (how does a computer tell? it does not have eyes!) By using a distance metric.

Let's use the manhattan distance metric to compute similarity. We can do this by hand first as a proof of concept:

<figure>
  <img src="manhattan.png" width="100%"/>
  <figcaption><b>Figure 2</b>: Manhattan distance formula</figcaption>
</figure>

***

The equation reads: The Manhattan distance `d(x,y)` (distance between patient x and patient y) is equal to the sum of the absolute value of x<sub>i</sub> - y<sub>i</sub>.

The absolute value means we do not pay attention to the sign, i.e every value is treated as a positive value.

Let's work through an example comparing patient 1 and patient 2: 

```console 

patient 1 = 11, 10, 1

patient 2 = 13, 13, 3

# vector subtraction
subtract patient 1 - patient 2 = -2, -3, -2

absolute sum value= 2 + 3 + 2 = 7
```

Try it yourself for patient 1 and patient 3:

```console

patient 1 = 11, 10, 1

patient 3 = 2, 4, 10

subtract patient 1 - patient 3 = 

use absolute sum value = 
```

And again for patient 1 and patient 4:

```console

patient 1 = 11, 10, 1

patient 4 = 1, 3, 9

subtract patient 1 - patient 4 = 

use absolute sum value = 
```

Which comparison produced a larger number for the manhattan distance? 

The larger the number, the further apart the samples are from each other. The smaller the number, the closer they are. 

By 'close' I mean close in terms of manhattan distance - which is how a computer can tell if two samples are close or not.

***

Luckily, in R we can use the built in function called `dist()`:

<codeblock id="04_0222">
</codeblock>

***

# Heatmaps

Heatmaps are a very, very common visualisation in genomics. There are two types that you will usually come across:

- `Sample Heatmaps`: By using a distance function, we can calculate how similar and dissimilar each sample is and plot the result in a heatmap. This is a great way to detect outliers in our dataset, a.k.a assessing sample heterogeneity.

- `Sample - Feature Heatmaps`: These heatmaps allow us to see the patterns of the features/variable that make up each sample. Excellent for inspecting what variables are casuing samples to be similar or dissimilar. 


## Sample Heatmaps 

Let's jump straight into our toy dataset. We are going to reuse code from the 'distance metric' section and plot the result in a heatmap! 

<codeblock id="04_05">
</codeblock>

## Hierarchical Clustering

Consider the image below:

<figure>
  <img src="hier.gif" width="75%"/>
  <figcaption><b>Figure 4</b>: schematic of clustering</figcaption>
</figure>

***

The algorithm works by:

- Computing the distance between each sample

- Form the first cluster by joining the 2 samples that are closest together.

- Re-compute the distances, and repeat until all samples have been added to a cluster.

***

We are not interested in the final 'blob' cluster that contains all samples - we are actually more interested in the intermediate clusters formed by the algorithm. But how can we visualise this? By using a <span style="color:blue">dendogram</span> - a tree-like structure that shows the relationships between the clusters.

<figure>
  <img src="hierarchical.gif" width="100%"/>
  <figcaption><b>Figure 4</b>: schematic of clustering with accompanying dendogram</figcaption>
</figure>

***

Let's add the dendogram to our previous heatmap of our toy dataset:

<codeblock id="04_06">
</codeblock>

## Feature Heatmaps

We can also make a heatmap of the features/variables that make up each sample. This is analogous to the previous barplot, SPLOM and parallel coordinates plot we made earlier - it conveys the same information with the added cluster labels. 

<codeblock id="04_123">
</codeblock>

</exercise>

<exercise id="2" title="Case Study: Iris Dataset">

<figure>
  <img src="iris.png" width="100%"/>
  <figcaption><b>Figure 1</b>: Iris dataset description</figcaption>
</figure>

***

Please take a moment to familiarise yourself with the dataset in the code block below: 

<codeblock id="04_07">
</codeblock>

***

## Sample Heatmap


Take a look at how to generate a sample heatmap of the iris dataset below (open image in new tab for full resolution):

<codeblock id="04_08">
</codeblock>

1. Based on the heatmap and dendogram, what can we say about the "setosa" species?

    <choice id="3">
    <opt text="It is dissimilar (large distance) to the other species" correct=true>
    Yes, the red streaks under the orange annotation blocks show setosa has a large distance to the others.</opt>
    <opt text="It is similar (small distance) to versicolor">
    Not quite - although we can argue that half of the versicolor sepcies are on the same dendogram arm. </opt>
    <opt text="It is similar (small distance) to virginica">
    Not quite</opt>
    </choice>

***

The above heatmap shows us that setosa is 'far away' from the other two species in euclidean space.. but why? Let's investigate the continuous variables that make up each sample. 

## Parallel Plot

Run the code block below to produce a parallel plot of the features in the iris dataset. We can try to get a sense of what is **driving the differences between species**.

<codeblock id="04_09">
</codeblock>

***

It is evident that the `setosa` species differentiates itself from the other two species at every feature. This corroborates the statements we made about the heatmap in the previous section :)

***

Inspect the plot and think about which features `Versicolor` and `Virginica` exhibit separation.

## Pairs plot 

We will use a SPLOM to identify which features separate the flower species. Similar to the parallel plot, we are looking at the same information from a different perspective. 

<codeblock id="04_10">
</codeblock>

***

A researcher comes to you with a new flower (_how exciting_). She/he suspects the flower might belong to `versicolor` or `virginica` species. You can use two features to try and classify the flower, which two will you choose? (This is subjective, however, the parallel plot showed us two good features that might cluster the species correctly...).

## Feature Heatmaps

Now lets make a heatmap of the samples and the features. Please note how in the code I use `t()` which <span style="color:blue">transposes</span> the matrix. The dataset has the features as columns, and observations as rows (like we expect) however, common nomenclature (or perhaps my preferance...) dictates observations go in the columns of heatmaps, and features go in the rows. If you are confused by any of the steps, feel free to add a `print()` statement somewhere to see precisely what I have done to the objects. 

<figure>
  <img src="Matrix_transpose.gif" width="50%"/>
  <figcaption><b>Figure 3</b>: Visual representation of the transpose of a matrix</figcaption>
</figure>

<codeblock id="04_11">
</codeblock>

***

Take a moment to try and interpret the heatmap yourself. I can offer my own thoughts on it during the tutorial but would be keen to hear your own thoughts first (if you are confused then it is a great opportunity for me to go over the material again with you). 

</exercise>

<exercise id ="3" title="Worksheet">

## Description

We will use the gene expression dataset from the previous week - recall there are 1305 observations (patients) of 5 genes (features). Each patient belongs to one of `Breast Cancer`, `Lung Cancer` or `Ovarian Cancer`. We already know which cancer type each patient belongs to as there is a categorical column with this information. The task here is to identify which genes separate the cancer types the best.

***

Split into your breakout room and work together to answer the questions about the plots in the sections below. We will go over your answers before the end of the class. 

* You might have to open the plots in a new tab to view them at full resolution


***

## Sample Heatmap

We will start with a sample heatmap by computing the distance for each of the 1305 samples, and plotting the result. You should be able to identify which cancer types are the most similar based on the colors of the plot (green - similar, red - different). 

Remember, we are not looking at the genes here, but tyring to get a sense of how 'close' the samples are in manhattan distance.

- Which cancer types are the most similar?

- Which cancer type is the least similar (to the other 2)? 


<codeblock id="04_13">
</codeblock>


## Pairs plot 

Let's view a pairs plot of the dataset. We have 1305 samples in this dataset, so the plot will have lots of data points! 

This time we are looking at the 5 genes that make up the dataset, colored according to which cancer type they belong to. 

Questions: 

- For the breast cancer patients (black dots), which gene do you think shows the most difference between the three cancer types? (Are the cloud of black dots further away from the red and green dots in any gene?). Pay close attention to the x and y axis. 

- Lung cancer patients and ovarian cancer patients (red and green dots) look like they overlap a lot for most genes, but they do seperate in one gene. Can you identify which gene this is? 

<codeblock id="04_12">
</codeblock>

***
## Parallel Plot

It is easier to see the gene expression patterns using a parallel plot. Answer the following questions: 

- In which gene are each cancer type relatively similar? i.e they overlap a lot? 

- In which gene do each cancer type show high - medium - low expression? i.e each cancer type does not overlap much in this gene.

<codeblock id="04_14">
</codeblock>

***

You can only afford to sequence 3 of the 5 genes. Which genes are you keeping that can be used to distinguish the cancer types? 

- Why have you chosen these 3 genes? 

- Why have you decided to omit the 2 genes? 

</exercise>