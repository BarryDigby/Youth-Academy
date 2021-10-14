---
title: 'Week 2: Data Frames and Plots' 
description: Plots using ggpubr
prev: /chapter1
next: /chapter3
id: 2
type: chapter
---
<exercise id="1" title="Data Frames">

Let's review the basics of a `data.frame`.

A `data.frame` is basically a table-like format (think excel spreadsheets) which has the following properties: 

<img src="tidy-1.png">

- Columns can each have a different type (`numeric`, `character`, `boolean`, `factor`)
- Columns are called "variables"
- Rows correspond to a single observation (ideally)
- Can be subset or filtered based on criteria

Conceptually, we can think of the rows and columns of a `data.frame` as vectors of values. 

Let's practice reading in a `data.frame`. I have prepared a healthcare dataset on strokes to use this week.

<codeblock id="02_01">
</codeblock>

</exercise>