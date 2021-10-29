---
title: 'Course Introduction' 
description: Please take the time to go through this section before beginning the course.
prev: null
next: /chapter1
id: 1
type: chapter
---

<exercise id="1" title="Click me!">

You have just opened a section. You can track your progress throughout the week by marking a section as completed (see the button below). 


In general, each week will follow a simple structure in terms of sections:

- Introducing a topic

- A worked example with questions

- A worksheet for you to complete yourself.

During the week I recommend covering the introduction section, and if time permits, the worked examples. On Saturday we can cover the worksheet and go back over any topics that were unclear in the introduction / worked example. 

***

**Note**: This course is designed so you get hands on experience in handling datasets and coding. I will **not** ask you to write out answers, or learn off definitions (like the ancient methods used in the leaving cert). If you are curious about a topic or piece of code, first try to google the topic yourself and explore further. Alternatively, reach out to me with questions.

</exercise>

<exercise id="2" title="Code Blocks">

This course will incorporate more and more coding as the it progresses.

When you click 'Run code', the code is sent to a <span style="color:blue">container</span> hosted at a separate website where it is evaluated, and the output is returned on screen for you. Containers are lightweight images of software - this means you don't have to install anything on your computer - you send your code to the container. They are increasingly popular in data science and cloud computing. 

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

The code block above was used to demonstrate code. You were not required to fill in any empty variables. There will be plenty of these code blocks in the course, particularly when I am explaining how something works in R.

Let's cover user inputs in the next section, these will be used for worksheets and sometimes case studeies. 

</exercise>

<exercise id ="3" title="Code Blocks & User Inputs">

In the worksheets, there will be times when I expect you to fill in the gaps in a code block.

For these code blocks I will typically leave a blank piece of code in the form of `______` which you have to fill in yourself.

**Note**: I will provide the solution to these code blocks if you are stuck, click 'show solution' to view it. 

<codeblock id="int_02">
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