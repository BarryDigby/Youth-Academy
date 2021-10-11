---
title: 'Course Introduction' 
description: This website has been designed with several interactive elements for you to engage with. Please take the time to go through this document before beginning the weekly exercises.
prev: null
next: /chapter1
id: 1
type: chapter
---

<exercise id="1" title="Click me!">

You have just opened an exercise! Exercises may come in the form of code blocks, multiple choice questions or both. Sometimes I will use exercise blocks to explain a concept further, so bear in mind not every exercise you see in a week contains work for you to do.

Let's take a look at code blocks, as they will be used heavily throughout the course.

</exercise>

<exercise id="2" title="Code Blocks">

Below is an example of a code block.

When you click 'Run code', the code is sent to a `container` hosted at a separate website where it is evaluated, and the output is returned on screen for you. Containers are lightweight images of software - this means you don't have to install anything on your computer - you send your code to the container. They are increasingly popular in data science and cloud computing. 

When running a code block for the first time you will see  <span style="color:blue">"Launching Docker container on mybinder.org..."</span>

Please be patient, the container will take a few minutes to compile. Once it has compiled, running code blocks should be relatively fast thereafter.

<codeblock id="int_01">
</codeblock>

The output from the code block should be 

```R
[1] "foobar"
[1] 6
```

Do not worry about the `[1]` - this is just `R's` way of saying 'this is line 1 of your output'. The output from the code block is printing the variable `var`, which of course returns "foobar" - the string we assigned to `var` by using the assign operator (`<-`). The second output is the number of characters in the string. We achieved this by using `nchar()`. 

The code block above was quite simple, there were no missing lines or missing variables for you to fill in. You just had to click "Run code". I did not include any hints or solutions - something that will usually be made available to you.

Let's cover user inputs in the next section.

</exercise>

<exercise id ="3" title="Code Blocks & User Inputs">

In addition to the 'Run code' button, there will be a green 'Submit' button which will check if your answer is correct when user inputs are supplied.

For these code blocks I will typically leave a blank piece of code in the form of `______` which you have to fill in yourself.

I have also included hints if you need a helping hand!

<codeblock id="int_02">
If you are stuck, take a look at the code block in exercise 2.
</codeblock>

How many nucleotides are in the sequence? 

<choice>
<opt text="6">
Not quite. What was the output of the `nchar()` function?</opt>
<opt text="7">
Not quite. What was the output of the `nchar()` function?</opt>
<opt text="8" correct="true">
Nice! There are 8 nucleotides in the sequence.</opt>
</choice>

The above examples are obviously trivial, but hopefully now you are comfortable navigating and using this resource.

***

If you need help using the website, notice any errors (nonsensical code blocks) or have any feedback in general, please do not hesistate to contact me at `b.digby1@nuigalway.ie`. Include 'Youth Academy' in the title of the email to grab my attention :)

</exercise>