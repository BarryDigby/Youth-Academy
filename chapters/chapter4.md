---
title: 'Week 4: Cluster Analysis' 
description:
prev: /chapter3
next: /chapter5
id: 4
type: chapter
---

<exercise id="1" title="Introduction">

For the next two weeks, we will move away from genetics (and biology in general) towards topics that are data science-centric. Please note that when we do apply these methods to biological datasets, they will be gene expression datasets.

<par>

I will try to portray the concepts at a conversational level, employing the use of small datasets so we are not overwhelmed by high-dimensional datasets. I will only include mathematical formulae if I am capable of explaining them.. 

<par>

We are going to look at another form of exploratory data analysis - <span style="color:blue">unsupervised machine learning</span> which attempts to identify patterns in our datasets and group samples together according to these patterns.

# Distance Metrics

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

Let's pretend we can only characterise patients using 3 genes (variables): `IRX4`, `PAX6` and `OCT4`. In the plot, we can see that patient 1 and patient 2 are the most similar. Why? Because they both exhibit low expression for `PAX6` and high expression for `OCT4` and `IRX4`. Conversely, patient 3 and patient 4 show the inverse expression patterns.

***

How do we express 'similarity' computationally? By using a distance metric! In R we can use the built in function called `dist()`:

```console
d=dist(df, method="manhattan")
print(d)
         patient1 patient2 patient3
patient2        7                  
patient3       24       27         
patient4       25       28        3
```

<details>
<summary><b>&raquo; The Manhattan distance</b></summary>

<figure>
  <img src="manhattan.png" width="100%"/>
  <figcaption><b>Figure 2</b>: Manhattan distance formula</figcaption>
</figure>

***

The equation reads: The Manhattan distance `d(x,y)` is equal to the sum of the absolute value of x<sub>i</sub> - y<sub>i</sub>.

Let's do this by hand in R:


```R
df # inspect the dataframe
         IRX4 OCT4 PAX6
patient1   11   10    1
patient2   13   13    3
patient3    2    4   10
patient4    1    3    9

> abs(df[1,]) # row 1 is patient 1. This will be x
         IRX4 OCT4 PAX6
patient1   11   10    1

> abs(df[2,]) # row 2 is patient 2. This will be y
         IRX4 OCT4 PAX6
patient2   13   13    3

> abs(df[1,] - df[2,]) # substract the two vectors and take absolute (abs) value
         IRX4 OCT4 PAX6
patient1    2    3    2

> sum(abs(df[1,] - df[2,])) # sum the product from previous step
[1] 7
```

7 is indeed the value for the distance between patient 1 and 2 in our distance matrix computed above.
</details>

***

If we want to use a different distance metric, we pass it to the `method` flag. A commonly used distance metric is `euclidean distance`:

```R
d=dist(df, method="euclidean")
print(d)
          patient1  patient2  patient3
patient2  4.123106                    
patient3 14.071247 15.842980          
patient4 14.594520 16.733201  1.732051
```

<details>
<summary><b>&raquo; Euclidean distance</b></summary>

<figure>
  <img src="euclidean.png" width="80%"/>
  <figcaption><b>Figure 3</b>: Euclidean distance formula</figcaption>
</figure>

***

The equation reads: The euclidean distance between x and y `d(x,y)` is equal to the square root of the sum of x<sub>i</sub> - y<sub>i</sub> to the power of 2. 

Let's do this by hand in R:

```R
df # inspect the dataframe
         IRX4 OCT4 PAX6
patient1   11   10    1
patient2   13   13    3
patient3    2    4   10
patient4    1    3    9

> abs(df[1,]) # row 1 is patient 1. This will be x
         IRX4 OCT4 PAX6
patient1   11   10    1

> abs(df[2,]) # row 2 is patient 2. This will be y
         IRX4 OCT4 PAX6
patient2   13   13    3

> (df[1,] - df[2,])^2 # Substract x & y and square result
         IRX4 OCT4 PAX6
patient1    4    9    4

> sum((df[1,] - df[2,])^2) # Sum the previous result
[1] 17

> sqrt(17) # Now get the square root
[1] 4.123106

> sqrt(sum((df[1,] - df[2,])^2)) # As one liner...
[1] 4.123106
```
</details>

***

The smaller the distance metric, the **closer/more similar** the two samples are.

***
# Scatter Plot Matrix 

Scatter plot matrices (SPLOM) are useful for visualising correlation in small datasets. In general, visualisations are preferred to distance metrics calculated in the previous section, as our eyes are very good at quickly recognising patterns in data. 

***

The code below was taken from the following website, feel free to customise things if you wish: [http://www.sthda.com/english/wiki/scatter-plot-matrices-r-base-graphs](http://www.sthda.com/english/wiki/scatter-plot-matrices-r-base-graphs).

<codeblock id="04_02">
</codeblock>

Let's bring back the first barplot I showed you to explain the plot generated by the code above: 

<figure>
  <img src="clust_patients.png" width="100%"/>
  <figcaption><b>Figure 1(re-used)</b>: Gene expression profile of 4 patients</figcaption>
</figure>

***

Scatter plot matrices produce a <span style="color:blue">pairs plot</span> for each variable in the dataset. Recall that patient 3 and patient 4 are characterised as having high `PAX6` expression levels, and low `IRX4` and `OCT4` expression levels. Focus on the panels on the right hand side of the scatter plot matrix - we can see that `PAX6` is on the x-axis and the green and blue dots (patient 3 and 4 respectively) exhibit high `PAX6` expression (they are to the right of the plot). Conversely, we can see that the black and red (patient 1 and 2) exhibit low `PAX6` expression. 

***

Once again we can visually see how the patients are 'similar' in terms of gene expression values, and lie close together in 2D space. 

# Parallel Coordinate Plots

Another string to your bow... parallel coordinate plots have the same function as SPLOMs using a different visualisation style. 

<codeblock id="04_03">
</codeblock>


The plot offers no new information, just a new perspective. 

# Hierarchical Clustering

Lets take a look at Hierarchical clustering, one of the most ubiquitous clustering algorithms. Using this algorithm you can see the relationship of individual data points and relationships of clusters. This is achieved by successively joining small clusters to each other based on the <span style="color:blue">inter-cluster</span> distance. Eventually, you get a tree structure or a <span style="color:blue">dendrogram</span> that shows the relationship between the individual data points and clusters. The height of the dendrogram is the distance between clusters.
<figure>
  <img src="hierarchical.gif" width="100%"/>
  <figcaption><b>Figure 2</b>: Schematic of hierarchical clustering stpes.</figcaption>
</figure>

***

In our toy dataset it looks like this:

<figure>
  <img src="pca_hclust.png" width="100%"/>
  <figcaption><b>Figure 3</b>: Recapitulating the above GIF to our toy dataset (open image in new tab for high resolution). Patient 3 and 4 are the most similar, and therefore lie close together in 2D space, meaning that they combine to form a single cluster in the dendogram. There are two "arms" in the dendogram, telling us the dataset forms 2 clusters</figcaption>
</figure>

***

<details>
<summary><b>&raquo; Code to produce plot</b></summary>

(Hit reset if empty)

<codeblock id="04_04">
</codeblock>

</details>

***
# Heatmaps

Heatmaps are a very, very common visualisation in genomics. There are two types that you will usually come across:

- `Sample Heatmaps`: By using a distance function, we can calculate how similar and dissimilar each sample is and plot the result in a heatmap. This is a great way to detect outliers in our dataset, a.k.a assessing sample heterogeneity.

- `Sample - Feature Heatmaps`: These heatmaps allow us to see the patterns of the features/variable that make up each sample. Excellent for inspecting what variables are casuing samples to be similar or dissimilar. 


## Sample Heatmaps 

Let's jump straight into our toy dataset. We are going to reuse code from the 'distance metric' section and plot the result in a heatmap! 

**Note**: We must place the result of the `dist()` function in a matrix

<codeblock id="04_05">
</codeblock>

***

Can you see how the heatmap shows that patient 1 and 2 are similar? These two patients have 2 genes that are highly expressed and as such each patient is colored as red (red represents 'hot'/'high' and blue represents 'cold'/'low') **when compared to patient 3 &4**.

***

By setting the `cluster_rows` and `cluster_cols` flags to `TRUE` we can perform clustering on the rows/columns and produce a dendogram on the heatmap. See the code below (we only make a minor change to the previous code block)

<codeblock id="04_06">
</codeblock>

***

Can you recognise the dendogram? It is the same one we produced manually in the 'hierarchical clustering' section :) 


**Note** Our toy dataset is a little trivial in that it was organised into correct clusters already. Usually when we have hundreds, thousands of samples, they do not come pre-arranged in the dataframe. This will be evident in the case study.


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

1. How many flower species are in the dataset?

    <choice id="1">
    <opt text="2">
    Not quite</opt>
    <opt text="3" correct=true>
    Yes - setosa, versicolor and virginica </opt>
    <opt text="4">
    Not quite</opt>
    </choice>

2. Columns 1-4 can be described as _______ variables, and the 5th column is a ______ variable: 

    <choice id="2">
    <opt text="Continuous, Categorical" correct=true>
    Yes, width and legth are continuous, whilst the 5th column describes the secies.</opt>
    <opt text="Continuous, Discrete">
    Not quite </opt>
    <opt text="Discrete, Categorical">
    Not quite</opt>
    </choice>

***

**Note:** When computing distance metrics, plotting heatmaps and performing clustering, **R only accepts numerical dataframes**. You must subset the iris dataset when providing it to functions that calculate these metrics i.e `iris[,1:4]`

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

We will use the gene expression dataset from the previous week - recall there are 1305 observations (patients) of 5 genes (features). Each patient belongs to one of `Breast Cancer`, `Lung Cancer` or `Ovarian Cancer`. Like the IRIS dataset, we already know which cancer type each patient belongs to as there is a categorical column with this information. The task here is to identify which genes separate the cancer types the best, similarly to how we identified the features (Sepal/Petal) in the IRIS dataset that separated each flower species (in practice, we would choose these genes to build a machine learning model that can be used to classify new patients of unknown cancer type).

***

**Note**: There will be no MCQ style questions this week, instead we will discuss what we see in the tutorial on Saturday.

* You will have to open the plots in a new tab to view them at full resolution

## Sample Heatmap

We should first make a sample heatmap to see how well samples cluster together in euclidean space. Refer to the introduction and case study for guidance if you are struggling to complete the code block: 

- When computing the distance using `dist()`, use "euclidean" as the distance metric. 

- The first argument of `pheatmap()` expects `dmat` as a matrix. 

- Scale the heatmap by `row`. 

- Add `annotdf` and `ann_col` to the final three arguments of `pheatmap` in the correct order.

<codeblock id="04_13">
</codeblock>

## Pairs plot 

Complete the code block below and inspect the pairs plot: 

- remember to subset the dataframe `expr` properly so the numeric columns are the first argument passed to `pairs(___)`

- `col=_____` will expect the categorical column of the `expr` dataframe

<codeblock id="04_12">
</codeblock>


## Parallel Plot

Complete the code block below to produce a parallel plot and take note of any features that separate the cancer types. 

- Recall the first argument passed to `parcoord()` are the numerical features in `expr`. Subset the dataframe accordingly. 

- `col = ` expects the categorical column, subset accordingly. 

- Use the value 0.5 for the argument `lwd` - we want to make the lines thin.                                                                                                                                                     

<codeblock id="04_14">
</codeblock>


## Feature Heatmap

Finally, let's make a feature heatmap to get a global snapshot of gene expression in each cancer patient:

- Subset the categorical features and save as `cancer`

- Isolate the rownames and save as `id`

- When computing the distance provide the `expr` dataframe (which has already been subset) and use "euclidean" or "manhattan" (try both to see what happens!)

- When calling the heatmap try different colors such as: `redgreen()`, `bluered()`, `greenred()` , `redblue()`


<codeblock id="04_15">
</codeblock>

***

Congratulations on making it this far, these materials are a small sample of topics covered in the MSc in genomic data science at NUIG!

</exercise>