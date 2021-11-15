---
title: 'Week 2: Data Frames and Plots' 
description: ''
prev: /chapter1
next: /chapter3
id: 2
type: chapter
---

<exercise id="1" title="Vector Recap">

Before we begin, let's recap some basics on vectors. The same terminology will apply to matrices and data frames.

<codeblock id="02_99">
</codeblock>

</exercise>

<exercise id="2" title="Matrices">

In week 1 we covered vectors, which can store similar data types. In reality, it is impractical to store your datasets in a series of vectors. R uses 2 main data structures to store collections of vectors, the first of which we will cover are matrices.

**Matrices are 2-dimensional data structures which contain data of the same type.** 

The standard function in R used to create matrices is `matrix()` which takes as input the data required, the number of columns and the number of rows.

1. The example below creates a 3x3 matrix using the numbers 1-9.

2. In the same code block, create a 10x10 matrix using the numbers 1-100.

3. Note how 1 -> 10 appear in columns. Add the parameter `byrow=TRUE` to change this.

<codeblock id="02_01">
</codeblock>

***
## Manually filling a Matrix

In the first section, we filled the matrix using a range of values from 1-9 and 1-100, respectively. An alternative to fixed numerical ranges is the ability to construct your own vectors, and concatenate them as a matrix.

<codeblock id="02_02">
</codeblock>

What is the data type of the matrix in the code block above? 

<choice id="1">
<opt text="Character">
Not quite.</opt>
<opt text="Double" correct=true>
Yes, R stores numerics as a double</opt>
<opt text="Factor">
Not quite.</opt>
</choice>

In the code block below, create a 2x2 matrix by concatenating two vectors: `1, 2` and `"T", "C"`.

What data type is the matrix below after mixing data types?

<choice id="2">
<opt text="Character">
Not quite.</opt>
<opt text="Double" correct=true>
Yes, R stores numerics as a double</opt>
<opt text="Factor">
Not quite.</opt>
</choice>


<codeblock id="02_03">
</codeblock>

***

## Assigning names

We will need to add additional `metadata` to our matrix, so we can make sense of each row or column. We do this using the `rownames()` and `colnames()` functions. An example of assigning rownames to matrix `mat` is as follows: `rownames(mat) <- c("row1", "row2")`.


<figure>
<img src="col_rownames.png" width="100%"/>
</figure>

***

I have constructed the matrix in the image above for you. Please correctly add the `colnames()` and `rownames()` that are in the image.

<codeblock id="02_15">
</codeblock>

</exercise>


<exercise id="3" title="Data Frames">

Let's review the basics of a `data.frame`.

A `data.frame` is basically a table-like format (think excel spreadsheets) which have the following properties: 

<img src="tidy-1.png">

- The column names should be non-empty.

- The row names should be unique.

- The data stored in a data frame can be of numeric, factor or character type.

- Each column should contain same number of data items.

## Reading Dataframes

Any `.txt`, `.tsv`, `.csv` file can be read as a dataframe - each row must have the same number of columns, and the columns must have the same number of rows - missing values will cause an error when attempting to load the data into R.

A `.tsv` file is a 'tab separated values' file, a `.csv` file is a 'comma separated values' file and a `.txt` text file can contain either comma or tab separated values. These 'spacing characters' are known as <span style="color:blue">delimiters</span>.

In R, we use the `read.table()` and `read.csv()` functions to read in dataframes. I will focus on using `read.table()` as it can handle `.txt`, `.tsv` and `.csv` files by specifying the delimiter used with the <span style="color:red">`sep`</span> argument, which takes `","`, or `"\t"` for commas and tabs, respectively. The <span style="color:red">header</span> argument tells R to set the first line of the file as the column names. 

Please take a moment to view the dataframe file as a raw file, you can clearly see the comma values separating each column. Character values are also surounded by double quotes. 

- View the raw file here -> [link](https://raw.githubusercontent.com/BarryDigby/Youth-Academy/master/data/stroke-data.csv)

Now take a moment to view the file as a dataframe on github (GitHub formats `.txt`, `.tsv` and `.csv` files automatically for you to make them easy to view). We aim to replicate this style of formatting in R. 

- View the file formatted as a dataframe here -> [link](https://github.com/BarryDigby/Youth-Academy/blob/master/data/stroke-data.csv)

<codeblock id="02_04">
</codeblock>

***

- **What are the dimensions of the dataframe? How many variables and observations are there?**

Below is a description of each variable in the dataset:

- **id**: A patient identifier given by an integer value.
- **gender**: The sex of the patient.
- **age**: Age of the patient given by an integer value.
- **hypertension**: Does the patient suffer from hypertension?
- **heart_disease**: Does the patient suffer from heart disease?
- **ever_married**: Is the patient married?
- **work_type**: Sector the patient works in.
- **Residence_type**: Does the patient live in a rural or urban area?
- **avg\_glucose\_level**: Patients average glucose level.
- **bmi**: Patients body mass index.
- **smoking_status**: Is the patient one of "former", "smoker", "non-smoker", or "unknown"?
- **stroke**: Has the patient had a stroke?

***

## Subsetting dataframes

Conceptually, a dataframe is a grid of values. We can access specific cells by slicing the dataframe. Much like vectors, we supply an index after the dataframe variable. 

The main difference is that we supply two index values, one for rows and columns separated by a comma. 

<img src="slicingDataFrames.png" width="100%">

## Keeping variables

To subset a dataframe **with the intent of keeping the variables selected**, we can use numerical indexing or pass the column name. If for example we wanted to subset dataframe `df` for two columns named `col1` and `col2` respectively, we would do the following: `df_subset <- df[, c("col1", "col2")]`.

Try this yourself using the stroke dataframe (loaded below). Subset the dataframe to include only the columns `age`, `work_type` and `stroke`. 

Be sure to run `dim()` on the object you create, check that the dimensions are correct.

<codeblock id="02_16">
</codeblock>

***

Another very intuitive way to subset dataframes is using the `subset()` function. For the code block above, the code to subset the three variables would be:

```R
df_subset <- subset(df, select=c(age, work_type, stroke))
```

_The main difference is that we don't wrap the column names in quotes_.
## Removing Variables

Sometimes we only want to remove one or two columns, in which case it is easier to delete 2 columns vs. "keeping" all the others (and typing lots of variable names).

The subset function takes care of this, simply place a minus sign `-` in front of the column names in the `select` argument (example: `select=-c(col1, col2)`).

<codeblock id="02_05">
</codeblock>

## Filtering values
Filtering dataframes is an extremely important skill required to manipulate datasets. It is vitally important that you are able to identify and remove data of poor quality (outliers, mislabelled points, non-informative data).

To filter data in R, we need to use <span style="color:blue">conditional operators</span>. Conditional operators return a boolean value (`TRUE`, `FALSE`) for the filtering threshold applied, and as such are also called <span style="color:blue">logical operators</span>.

- <span style="color:red">`<`</span> less than
- <span style="color:red">`<=`</span> less than or equal to
- <span style="color:red">`>`</span> greater than
- <span style="color:red">`>=`</span> greater than or equal to
- <span style="color:red">`==`</span> exactly equal to
- <span style="color:red">`!=`</span> not equal to
- <span style="color:red">`!x`</span> Not x
- <span style="color:red">`x | y`</span> x OR y
- <span style="color:red">`x & y`</span> x AND y

Let's use some conditional operators on a vector so you can see for yourself:

<codeblock id="02_17">
</codeblock>

***

Great! The boolean values returned by the conditional operators are stored in a vector. We can use these values to subset the dataframe!

Let's see this in action with a dataframe. We will subset the stroke dataset into two partitions: one with patients with bmi over 30, and one with bmi under 30.

<codeblock id="02_06">
</codeblock>

## Updating Dataframes
It is common practice to create new columns in a dataframe that are a function of previously existing columns in the dataset.

We will continue using the example in the previous section, and assign a new column to the dataframe called `bmi_over_30`. To create a new column in R, use the dollar sign like so: `df$bmi_over_30 <- (perform operation)`.

For the code block below, I want you to complete the code snippet so that: 

- A new column called `bmi_over_30` is created in the dataframe `df`.

- Use logical operators to ask which patients have a bmi over 30.

- Inspect the new column using `table()`. 

<codeblock id="02_18">
</codeblock>


</exercise>

<exercise id="4" title="Exploratory Data Analysis (EDA)">
<p>After loading data into R, the first thing we want to do is generate some plots of the variables in the dataset. This is a measure of quality control, we can identify serious outliers or incorrectly labelled data points via plots. Furthermore, we can get a sense of the distribution of values in our dataset. Looking at the dataframe by eye is not an option here - we have nearly 5000 values!</p>

Now is a good time to define types of variables:

- <span style="color:blue">Categorical variables</span>: are values that are not quantifiable. An example would be the year you belong to in secondary school.

- <span style="color:blue">Continuous variables</span>: are values that take on an infinite number within an interval. Continuous variables are obtained via quantifiable measurements.

- <span style="color:blue">Discrete variables</span>: are values that take on a finite number of real values. An example is the outcome of rolling a dice, where the values all lie within the set {1,2,3,4,5,6}.

## Boxplots
Boxplots are useful for visualising the distribution of variables by inspecting their quartiles. We can check if our data is tightly grouped (or spread out), if it has outliers or if the distribution is skewed. The take home message from the figure below is that the 'box' in the boxplot represents the interquartile range (25th to 75th percentile) of the data. The line within the box represents the median value in the data, the blue lines extend as far as the minimum and maximum data point. The exception to this is when a point is defined as an outlier, which will appear as a data point outside of the range of the boxplot.

<img src="boxplots.png" width="100%">

***

To make a boxplot in R, we will use `ggboxplot()`. Let's start with a basic boxplot of patients age in the stroke dataset.

Breakdown of arguments passed to `ggboxplot`:
- first argument 'df' is the dataframe with data
- `y`: Variable to plot on y-axis (the continuous variable)
- `bxp.errorbar`: Plot error bars (leave as TRUE for all plots)

<codeblock id="02_10">
</codeblock>

***

That boxplot was not overly informative. Let's take a look at the distribution of patients age that did, or did not have a stroke. 

We need to add the argument for the x-axis, telling the boxplot we want to split the plot according to stroke status. 

Fill in the empty argument in the code block below:

<codeblock id="02_101">
</codeblock>

***

### Spruce up your plots! 

Plots are a visual aid, and should be color coded accordingly. We are going to make the previous plot look much better by adding a color legend, and a theme:

- `color`: The color of the boxplot outlines.

- `palette`: Built-in color palette to use for 'fill' (options: `"npg"`, `"aaas"`, `"lancet"`, `"jco"`, `"ucscgb"`, `"uchicago"`, `"simpsons"` and `"rickandmorty"`)

- `ggtheme`: The style of the plot background, surrounding lines, and gridlines (options: `theme_gray()`, `theme_bw()`, `theme_minimal()`, `theme_classic()`, `theme_void()`)

- `fill`: Boxplots will be color coded according to the value of the variable.

<codeblock id="02_102">
</codeblock>

## Histograms
Histograms show the empirical distribution of one-dimensional data, the y-axis shows the count (or proportion [frequency]) of the observations that fall in the range shown on the x-axis. If you need a quick refresher on histograms, please take a moment to walk through the example given below:

<img src="histogram_exp.jpg" width="100%">

***
To plot a histogram in R, we will use `gghistogram()`. Histograms are useful for checking the distribution of the data, particularly to assess if it follows a normal distribution. (If it does not we  have to transform the data so we do not violate the underlying assumptions of statistical tests - this is beyond the scope of this course...)


Breakdown of arguments passed to `gghistogram`:
- first argument is the dataframe
- `x`: Variable to plot on the x-axis (continuous variable)
- `y`: Variable to plot on the y-axis (..count.. or ..density..)


<codeblock id="02_09">
</codeblock>

***

Once again, this is a very simple plot. Let's continue our theme of splitting patients according to BMI above or below 30. 

If you struggled with this ealier, don't worry - I have created the variable for you. 

I want you to use the same logic as the boxplot, and color the `fill` with the variable `bmi_over_30`. Use this variable for `facet.by` to see what happens!

<codeblock id="02_091">
</codeblock>

## Scatterplots 
Scatterplots allow us to examine the joint distribution of two continuous variables. Scatterpots are primarily used to assess the relationship between two variables - do they rise together? (positive correlation) or does one fall as the other rises (negative correlation).

Let's start with a simple question - does patient age correlate with their BMI levels?

To make a scatterplot in R, we will use `ggscatter()`. A breakdown of the arguments is given below (hopefully you notice `ggpubr` recycles the same arguments for many of its functions):

- first argument `df` is the dataframe
- `x`: Data to plot on x-axis (continuous)
- `y`: Data to plot on y-axis (continuous)


<codeblock id="02_07">
</codeblock>

***

The plot makes sense - as we age, our BMI increases, and steadily declines as we age. 

Your contrarian colleague disputes this fact, so let's try to convince him/her by using data visualisations! 

For the code block below: 

- Create a new variable called `above_40` in the dataframe. Use logical operators to create this new variable. 

- Use the argument `facet.by` and provide the new variable we created. 

<codeblock id="02_071">
</codeblock>

***


Please do not hesistate to try making your own plots using the Stroke dataset with `ggpubr()`. The documentation for each plot are available at the following links: 

- [Histograms](https://rpkgs.datanovia.com/ggpubr/reference/gghistogram.html)
- [Scatterplots](https://rpkgs.datanovia.com/ggpubr/reference/ggscatter.html)
- [Boxplots](https://rpkgs.datanovia.com/ggpubr/reference/ggboxplot.html)

The code block below is an empty slate with the dataframe and library loaded to produce plots. If you are still not comfortable, go back to the examples and make a small change to the code, click Run, and see what happens. Rinse and repeat until you are comfortable. 

If you are still struggling, not to worry. I can help you during Saturday's class. 

<codeblock id="02_066">
</codeblock>

</exercise>

<exercise id="5" title="Worksheet">

## ToothGrowth Data
For this weeks worksheet you will be inspecting the `ToothGrowth` dataset which shows the relationship between the growth of teeth of guinea pigs at each of three dose levels of Vitamin C (0.5, 1 and 2 mg) with each of two delivery methods(orange juice and ascorbic acid).

Take a moment to inspect the dataframe in the code block below. Make use of `str()`, `summary()`, `head()` etc to view the 3 variables and their data type.

<codeblock id="02_11">
</codeblock>

Answer the following questions regarding the 3 variables:

1. What type of variable is `len`?

    <choice id="1">
    <opt text="Continuous" correct=true>
    Yes that is correct, len is a measurable variable.</opt>
    <opt text="Categorical">
    Not quite. len does not denote a membership to any group.</opt>
    </choice>

2. What is the interquartile range (Q1 - Q3) for `len`?

    <choice id="2">
    <opt text="1st Q: 0.500, 3rd Q: 2.000">
    Not quite, try using summary(ToothGrowth) to check.</opt>
    <opt text="OJ:30, VC:30">
    Not quite, try using summary(ToothGrowth) to check.</opt>
    <opt text="1st Q:13.07, 3rd Q:25.27" correct=true>
    Yes that is correct!</opt>
    </choice>

3. What type of variable is `supp`?

    <choice id="3">
    <opt text="Continuous">
    Not quite, for starters supp is not numeric.</opt>
    <opt text="Categorical" correct=true>
    Yes, supp is categorical, we can see it is a factor with 2 levels (one for each group).</opt>
    </choice>

4. What does VC and OJ stand for in `supp`?

    <choice id="4">
    <opt text="Vita Coco, Orange Juice">
    Not quite, be sure to read about the dataset.</opt>
    <opt text="Vitamin C, Orange Juice" correct=true>
    Yes, ascorbic acid is vitamin c..</opt>
    <opt text="Vitamin C, OJ Simpson">
    Let's hope not for the sake of the guinea pigs.</opt>
    </choice>

5. What type of variable is `dose`?

    <choice id="5">
    <opt text="Continuous">
    Not quite, 3 doses of VC were administered, dose can only belong to one of 0.5mg, 1mg or 2mg.</opt>
    <opt text="Categorical" correct=true>
    Yes, dose is categorical, despite it having a numerical representation.</opt>
    </choice>

***

## Inspect 'len' variable using Histogram 

Let's use `gghistogram()` to see how the distribution of the variable `len` looks.

- Start with a very basic histogram. 

- Add `fill = "supp"` to color the histogram according to the `supp` variable.

- Add `facet.by = "dose"` to group the histogram by the `dose` variable.

<codeblock id="02_77">
</codeblock>

<codeblock id="02_771">
</codeblock>

<codeblock id="02_772">
</codeblock>

## Inspect using Boxplots

Histograms were not the best way to visually assess the questions we want to ask of the dataset. Let's use `ggboxplot()` instead. 

In the code block below, we want to see if using higher doses of vitamin C (`dose`) has a positive or negative effect on the length of the teeth (`len`).

- Recall continuous variables go on the y-axis, and categorical variables go on the x-axis. 

- Plot length(continuous) against dose(categorical) using `ggboxplot()`.

<codeblock id="02_12">
</codeblock>

***

Answer the following questions regarding the plot:

1. Does increasing VC dose increase tooth length?

    <choice id="6">
    <opt text="Yes" correct=true>
    Indeed we can see the distributions of tooth length increase according to increased dose</opt>
    <opt text="No">
    Not quite, the y-axis represents tooth length. We can see it increase steadily with increased dose (x-axis).</opt>
    </choice>

2. Are there any outliers present in the plot?

    <choice id="7">
    <opt text="Yes" correct=true>
    Correct, we can see an individual data point in dose 0.5 which represents an outlier.</opt>
    <opt text="No">
    Not quite, review the figure explaining boxplots.</opt>
    </choice>

***

## Does Supplement have an effect?

Great! We can make a plot that clearly shows an increase in tooth length when the vitamin C dose is increased. Now, let's use `facet.by` to produce the same plot, but at each level of dose, we will be able to see both Ascorbic Acid and Orange juice side by side.

- You will want to keep `len` on the y-axis

- Change the x-axis to `supp`

- Finally, use `dose` in `facet.by`.

<codeblock id="02_13">
</codeblock>

Answer the following questions: 

1. Overall, which supplement is more effective at increasing tooth length?

    <choice id="8">
    <opt text="Orange Juice" correct=true>
    Correct, Orange Juice is more effective at increasing tooth length.</opt>
    <opt text="Vitamin C">
    Not quite, Orange Juice is more effective at increasing tooth length.</opt>
    </choice>

1. At lower doses (0.5mg , 1mg) which supplement method is more effective?

    <choice id="9">
    <opt text="Orange Juice" correct=true>
    Correct, we can see in the 0.5mg and 1mg faceted plots that OJ yields higher tooth length.</opt>
    <opt text="Vitamin C">
    Not quite.</opt>
    </choice>

***

## Prettify
Nice job identifying trends in the dataset. Now we want to present the results to your ficticious boss. He/She likes using colorful plots to help interpret the data, and properly labelled axes are a must. He/She has requested:

- Convert the column `dose` to a factor in the dataframe.
- Plot `supp` on the x-axis
- Plot `len` on the y-axis
- Facet the plot by `dose`
- Include boxplot errorbars
- Use the "lancet" palette
- Color by `supp`
- Use the theme_bw() for ggtheme
- Make the x-axis label "Ascorbic Acid Supplement"
- Make the y-axis label "Tooth Length (mm)"
- Make the plot title "Week 2 Worksheet"

<codeblock id="02_14">
</codeblock>


</exercise>