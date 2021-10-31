---
title: 'Week 3: RNA-Seq' 
description: ''
prev: /chapter2
next: /chapter4
id: 3
type: chapter
---
<exercise id="1" title="High Throughput Sequencing">
Before jumping into this weeks topic on RNA-Sequencing, we first need to cover high-throughput sequencing (also known as next-generation sequencing NGS).

&nbsp;

In week 1 we covered the basics of genetics, the concept of a gene and how they are represented computationally. But how did we manage to figure out the sequence of a gene in the first place? 

## Sequences, Sequences and Sequences

<span style="color:blue">Frederick Sanger</span> first rose to fame for succesfully solving the sequence of the protein insulin via a series of degredation reactions. By utilising fluorodinitrobenzene (FDNB) to tag and identify the termini amino acids of insulin’s two chains as Glyceine and Phenylalanine, Sanger proceeded to degrade the protein using enzyme hydrolysis and applying 5,5'-dithiobis-2-nitrobenzoic acid (DTNB) to identify the amino acids at the position of the fresh break - much like snapping beads off a necklace. Sanger was able to determine the amino acid sequence of insulin and was awarded the nobel prize in chemistry in 1958. 


<figure>
  <img src="insulin-struct.png" width="100%">
  <figcaption><b>Figure 1</b>: Insulin amino acid sequence. Lines represent 2 inter-chain disulfide bonds and one intra-chain disulfide bond, respectively.</figcaption>
</figure>

***

Next, Sanger turned his attention to DNA at the university of Cambridge. The chemical techniques previously employed on proteins were not working on DNA - there are only 4 bases compared to 20 amino acids - the fragmented sequences were much longer and far too similar to each other to correctly infer the original sequence. To combat this, Sanger ditched previous techniques and decided to 'eavesdrop' on the process of DNA synthesis, taking note of each base being added one by one. 

### PCR

<span style="color:blue">Polymersase chain reaction (PCR) </span> at the time, was a recently developed technology used to amplify DNA sequences. Using a target region of DNA as starting material, PCR requires DNA <span style="color:blue">primers</span> that are designed specifically for the region of interest, and the enzyme <span style="color:blue">Taq polymerase</span>. 

<figure>
  <img src="PCR-1.png" width="100%">
  <figcaption><b>Figure 2</b>: Primers designed for region of interest.</figcaption>
</figure>

***

Following a heat reaction at 90&deg;C to <span style="color:blue">denature</span> DNA (separate double stranded molecule into two single strand molecules), the reaction is cooled to 55&deg;C to allow <span style="color:blue">annealing</span> of the primers to their complementary sequence on the single DNA template strand. The reaction is then raised to 72&deg;C where Taq polymerase <span style="color:blue">extends</span> the primers via DNA synthesis, producing two new strands of double stranded DNA from the original. 

**Note**: The reaction contains free deoxyribonucleotides (dNTPs), which are added to the primer via Taq polymerase.

<figure>
  <img src="PCR-2.png" width="100%">
  <figcaption><b>Figure 3</b>: Primer annealing, extension</figcaption>
</figure>


***
### Sanger Sequencing

As aforementioned, Sanger wanted to eavesdrop on the process of PCR to monitor each base being added by Taq polymerase. This was nigh on impossible as the reactions happened at breakneck speed, Sanger was unable to catch the intermediate steps during the process of DNA extension. 

***

To overcome this problem, Sanger tweaked traditional PCR by using <span style="color:blue">dideoxynucleoside triphosphates (ddNTPs)</span> - chemically modified dNTPs which lacked a 3' hydroxyl group that was crucial in forming a bond with the incoming dNTP, thereby ending the process of DNA extension prematurely. This new technique was dubbed <span style="color:blue">chain termination PCR</span>. 

***

In practice, a smaller ratio of ddNTPS are added to a larger pool of dNTPs and PCR is carried out. The net result from traditional PCR would be millions of copies of the original sequence, however, with Sanger Sequencing, there were millions of sequences of the original copy of <u>varying lengths and all ending in a ddNTP</u>. 

***

Using gel electrophoresis, the sequences were sorted by size. As ddNTPs were added at random, short sequences could be used to infer the beginning of the DNA sequence, whilst longer sequences would help identify the middle and end as shown in the figure below. How did they know which base was which? Each of the four modified ddNTPs carried a distinct fluorescent label. The emitted fluorescence signal from each excited fluorescent dye determines the identity of the nucleotide in the original DNA template.

***

<figure>
  <img src="sanger.png" width="100%">
  <figcaption><b>Figure 4</b>: Sanger Sequencing. </figcaption>
</figure>

***
### Second Generation Sequencing 
I will provide an embedded video from Illumina to describe this section. It is worthwhile noting that as a bioinformatician, it is unlikely that you will ever have to perform any of these experiments. Still, it is nice to know where our data comes from.

***

<iframe src="https://www.youtube.com/embed/fCd6B5HRaZ8" onload='javascript:(function(o){o.style.height=o.contentWindow.document.body.scrollHeight+"px";}(this));' style="height:425px;width:100%;border:none;overflow:hidden;" allowfullscreen></iframe>

</exercise>

<exercise id="2" title="RNA Sequencing">

## Motivation

Recall the image from week one, a schematic of how genes are transcribed to mRNA, and translated into a functional protein.

<figure>
  <img src="central-dogma.png" width="100%"/>
  <figcaption><b>Figure 1</b>: Central Dogma of biology.</figcaption>
</figure>

***

Researchers use RNA-Seq to study the changes in gene expression between two (or more) conditions of interest. For example, we might be interested in comparing a 'normal' healthy lung tissue with a cancerous 'tumor' lung tissue. By capturing all of the RNA material in each cell, we are in essence taking a snapshot of what genes are being actively transcribed to mRNA - a proxy for identifying which genes are switched on or off in the tissue of interest.

## RNA Library Prep

1. RNA is isolated from cells and treated with Deoxyribonuclease (DNase) to deplete any DNA in the sample. 

2. Many types of RNA molecules exist, researchers can choose to 'fish out' mRNAs by using PolyA selection protocols. (Mature mRNAs are tagged with a stretch of contiguous adenosine bases - hence the name poly adenylated tail.)

3. The RNA templates are reverse transcribed to complementary DNA (cDNA) as DNA is more stable, and compatible with the enzymes used in sequencing technologies (Taq polymerase).

***

The cDNA is then subjected to high-throughput sequencing techniques outlined in the Illumina video above. 

## FASTQ Files
Let's take a look at the file returned from a sequencing machine, called FASTQ files. Below are the first 4 reads from a sequencing run.

```console
@SRR6357073.31043222 31043222/1 kraken:taxid|4932
GTTTTCGATTTCGAATTATTTGTTTTTTGAGGATTCCGAGCTATAACTTTGGGTTTGGTTGTATTCGTATAGCTGCGAGAATCATTCTTCTCATCACTCGG
+
BBBBBFFFFFFFF/FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF<<FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
@SRR6357073.8331722 8331722/1 kraken:taxid|4932
ATTGGATTGCATGCCTGAGTCGTAAGTGTCAGGATGCTGAATATCACCTCTTGCAACAAATCTAGCTTTATGAGTACCGTCACGTTTCTTGTTGAAGAGAT
+
<BBBBFB/FF<B/<BB//B/</<<FFFFFFB/B</<F<FFFFFBF<BFFFB<F<FBFB<BFBBB</FF/FFFFFF/<FBFFFFF<FFFBFFFFBFBBB/FB
@SRR6357073.7254397 7254397/1 kraken:taxid|4932
CTTGCAACAAATCTAGCTTTATGAGTACCGTCACGGTTCTTGTTGAAGATAAACATTGAGTTTATTACTCTTTTAGGGTCTATTTCTGTTCTGTCATAATA
+
BBBB<FFFFFFF<FFFFFF<FFFBF/B/FFFFBFF///<FFFFFFBFF<FFFFFFFFB//</FBFFF<BFFFFFFFFFFFFFFFFF//B<FBFFF<<<F//
@SRR6357073.19215418 19215418/1 kraken:taxid|4932
ATTTTACAGGGCGATCGCTAAGCTTAATCAACTTCTTCGACAGTTGGACCTTCAGCTTCTGGAGCTGGAGGAGCACCACCTGGGAAACCACCTGGAGCTGC
+
BBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
```

***

- Line 1 always begins with a `@` indiciating the sequencng run (google SRR6357073 to find out more about the origin of this run), sequencing machine and cluster information. 

- Line 2 is the cDNA sequence that was derived from the original RNA template. 

- Line 3 is always a `+` - probably used as a delimiter. 

- Line 4 are the base quality scores, i.e how confident the machine was in calling each base. See the figure below for the probability scores (of an incorrectly called base) associated with each ASCII character.

***

<figure>
  <img src="ASCII.png" width="100%"/>
  <figcaption><b>Figure 2</b>: Phred scores assigned to each called base.</figcaption>
</figure>

***

## Genome Alignment

Now that we have all of our RNA seq reads in a FASTQ file (one file per sample sequenced), we need to map them back to the reference genome in order to determine which gene they came from. In the video below, we will take a look at aligned RNA-Seq reads in a BAM file, and view them using IGV. This should help you visualise the concept of genome alignment. 


To participate in this video, you will need to download two files:

- <span style="color:red">RAP1\_UNINDUCED\_REP1.markdup.sorted.bam</span>

- <span style="color:red">RAP1\_UNINDUCED\_REP1.markdup.sorted.bam.bai</span>

The files are available at the following URL: [https://github.com/BarryDigby/Youth-Academy/tree/master/data](https://github.com/BarryDigby/Youth-Academy/tree/master/data).

You will also need to open the IGV web browser once again: [https://igv.org/app/](https://igv.org/app/)

`SNC1` locus : `chrI:87,286-87,752`

<iframe src="https://www.youtube.com/embed/khwWzz0G_eg" onload='javascript:(function(o){o.style.height=o.contentWindow.document.body.scrollHeight+"px";}(this));' style="height:425px;width:100%;border:none;overflow:hidden;" allowfullscreen></iframe>



</exercise>

<exercise id="3" title="Case Study: The Cancer Genome Atlas (TCGA) Dataset">

## TCGA data

The Cancer Genome Atlas (TCGA) data is a publicly available database containing clinical and genomic data across 33 cancer types. These data include gene expression, CNV profiling, SNP genotyping, DNA methylation, miRNA profiling, exome sequencing, and other types of data. 

For this case study, we will use gene expression data for 5 genes ("GATA3", "PTEN", "XBP1", "ESR1", "MUC1") in 3 cancer subtypes:

1. `BRCA`: Breast cancer

2. `LUSC`: Lung squamous ell carcinoma

3. `OV`: Ovarian serous cystadenocarcinoma


You will be tasked with making some exploratory data analysis plots (boxplots, histograms, scatterplots) that we covered in week 2, and I will also show you how to do a basic statistical test to check if the differences in gene expression are 'real'. Multiple choice questions will follow some code blocks to check if you are interpreting the plots correctly.

## Data Inspection

As always, the first thing we need to do is read the dataset into R and inspect the columns to get a sense of what kind of variables we are working with.

<codeblock id="03_01">
</codeblock>

***

1. How many patients are in the dataset?

    <choice id="1">
    <opt text="6">
    Not quite, there are 6 columns, each storing information about a patient (i.e a variable).</opt>
    <opt text="1305" correct=true>
    Correct, each row corresponds to a patients data</opt>
    <opt text="33">
    Not quite.</opt>
    </choice>

2. How many patients belong to the ovarian serous cystadenocarcinoma (OV) cancer type? 

    <choice id="2">
    <opt text="590">
    Not quite.</opt>
    <opt text="154">
    Not quite.</opt>
    <opt text="561" correct=true>
    Yes, there are 561 OV patients in the dataset</opt>
    </choice>

## Making Comparisons

In the dataset we have 5 genes, each coming from 3 different cancers. Take a moment to think about what kind of comparisons we can make:

- Compare gene expression across cancers (e.g look at 1 gene across the 3 cancers):

<figure>
  <img src="bxp1.png" width="100%"/>
  <figcaption><b>Figure 1</b>: Comparing `PTEN` expression across cancer type</figcaption>
</figure>

***

- Are differences in gene expression across cancer types statistically significant? (below we compare PTEN in each cancer against the overall average for PTEN expression [black dash line]).

**Note**: `PTEN` looks to be up-regulated in `BRCA` patients, down-regulated in `LUSC` and there looks to be no change in expression in `OV` samples **when compared against the basemean**.


<figure>
  <img src="bxp2.png" width="100%"/>
  <figcaption><b>Figure 2</b>: Are the differences in PTEN expression across cancers statistically siggnificant?</figcaption>
</figure>

***

- Check gene expression trends within a cancer type:

<figure>
  <img src="bxp3.png" width="100%"/>
  <figcaption><b>Figure 3</b>: All data plotted side by side within each cancer</figcaption>
</figure>

***

## Worked Example

Lets take a look at how to make these plots: 

- Define the comparison you want to make! 

Let's choose the gene `MUC1`. Below is an excerpt from the website [https://www.genecards.org/cgi-bin/carddisp.pl?gene=MUC1](https://www.genecards.org/cgi-bin/carddisp.pl?gene=MUC1):

> <i>"Tissue specificity: Expressed on the apical surface of epithelial cells, especially of airway passages, breast and uterus. Also expressed in activated and unactivated T-cells. **Overexpressed in epithelial tumors, such as breast or ovarian cancer and also in non-epithelial tumor cells.**"</i>

Great, we have evidence that `MUC1` is overexpressed in breast and ovarian cancers. We should expect `MUC1` to have higher expression levels in `BRCA` and `OV` when directly compared to `LUSC`. 

- Make a simple plot to make sure you are comparing the correct variables:

<codeblock id="03_02">
</codeblock>

***

Cool, it looks like `MUC1` expression is lower in `LUSC` when inspecting the plot. But we can't make that claim by eyeballing a plot, we need a measure of statistical significance to stand by our claim. 

***

First, we need to tell R what comparison we want to make. We want to compare `MUC1` expression in `BRCA` vs. `LUSC`, and `MUC1` expression in `OV` vs. `LUSC`. We can establish this using a list in R:

**Note**: We are specifying which groups (cancer_types = factor variables) to compare - these comparisons can be applied to any gene in the dataset..

```R
# BRCA vs. LUSC && OV vs. LUSC
MUC1_comparison <- list(c("BRCA", "LUSC"), c("OV", "LUSC"))
```

Next, we provide this information to the plot using `stat_compare_means()`.

<codeblock id="03_03">
</codeblock>

***

## Significance Values

In the above plots where we make comparisons, we are using a `T-test` to test if the mean value of `MUC1` in `BRCA` is different to the mean value of `MUC1` in `LUSC` and so forth. 



The results of the test are given as a <span style="color:blue">p value</span>, which is a measure of the probability that an observed difference could have occurred by chance. Let's break that down:

- State the null hypothesis: "**There is no difference** in `MUC1` gene expression between `BRCA` , `LUSC` patients".

- State the alternative hypothesis: "**There is a difference** in `MUC1` gene expression between `BRCA`, `LUSC` patients."

- Perform the t-test - _what is the chance of obtaining these results (alternative hypothesis) if the null hpothesis is true_

- A very small p-value (< 0.05) indicates strong evidence against the null hypothesis, as there is less than a 5% probability the null is correct. Therefore, we reject the null hypothesis, and accept the alternative hypothesis.

- A large p-value (> 0.05) indicates strong evidence for the null hypothesis. This means we retain the null hypothesis and reject the alternative hypothesis.

In the plot, statistically significance is denoted by an asterisk `*`. Asterisks usually denote:

| Symbol 	| Meaning                                     	|
|--------	|---------------------------------------------	|
| ns     	| P > 0.05                                    	|
| *      	| P ≤ 0.05                                    	|
| **     	| P ≤ 0.01                                    	|
| ***    	| P ≤ 0.001                                   	|
| ****   	|  P ≤ 0.0001                                 	|

***

</exercise>

<exercise id="4" title="Worksheet">

## High Throughput Sequencing

1. What enzyme is used in PCR to elongate the DNA primer?

    <choice id="1">
    <opt text="DNA primers">
    Not quite, DNA primers are used as a starting guide.</opt>
    <opt text="Taq polymerase" correct=true>
    Correct, Taq polymerase is used to add nucleotides to the primer. (BTW: anything ending in 'ase' is usually an enzyme!</opt>
    <opt text="ddNTPs">
    Not quite, ddNTPs are added to the growing DNA strand in chain termination PCR.</opt>
    </choice>

2. In PCR, annealing allows:

    <choice id="2">
    <opt text="The separation of double stranded DNA to single strand DNA">
    Not quite, this occurs at 90&deg;C and is called denaturation</opt>
    <opt text="Primers to attach to the complimentary DNA strand" correct=true>
    Correct, annealing involves the complimentary binding of primers to template DNA</opt>
    <opt text="Taq polymersase to extend primers">
    Not quite, this occurs at 72&deg;C and is called extension</opt>
    </choice>

3. Chain termination PCR refers to:

    <choice id="3">
    <opt text="The premature termination of PCR extension" correct=true>
    Correct, the addition of a single ddNTPs prevents the addition of dNTPs.</opt>
    <opt text="The premature termination of PCR annealing">
    Not quite, Sanger sequencing requires primers to bind to the template like regular PCR</opt>
    <opt text="The exclusive use of dNTPs">
    Not quite, Sanger sequencing uses both ddNTPS and dNTPs</opt>
    </choice>

4. How do researchers recover information about which ddNTP base (A, T, G, C) was added?

    <choice id="4">
    <opt text="By analyzing the chemical composition of the ddTNP">
    Not quite. They could do this, but it would be extremely intensive work.</opt>
    <opt text="Enzyme reactions to 'break off' the final base">
    Not quite, this approach was used to recover the amino acid structure of insulin</opt>
    <opt text="Flourescently-labelled nucleotide bases" correct=true>
    Correct! By exciting the ddNTP using light, a distinct flourescent label is emitted</opt>
    </choice>

## RNA-Sequencing

1. In general, RNA-Seqencing is used to analyze:

    <choice id="5">
    <opt text="Changes in our DNA sequence">
    Not quite. RNA-Seq is concerned with quantifying the intermediate product of genes (mRNA), not the DNA itself.</opt>
    <opt text="The quantity and composition of proteins produced by a cell">
    Close, but not quite. RNA-Seq studies the intermediate molecule mRNA. Proteomics is a different discipline.</opt>
    <opt text="The quantity and composition of mRNA produced in a cell" correct=true>
    Correct! We can only make inferences at the genomic level.</opt>
    </choice>

2. Recall week 1: **"Double stranded DNA is used as the template to produce a single stranded RNA molecule, which uses A/U/G/C (note Thymine is replaced by Uracil in RNA) nucleotide bases."**
   
   
   Translate the following DNA sequence to RNA: 

   \- `ATG TCG TTC ATC`

    <choice id="6">
    <opt text="ATG TCG TTC ATC">
    Not quite, this is the template DNA sequence</opt>
    <opt text="UAC AGC AAG UAG" correct=true>
    Nice work.</opt>
    <opt text="AUG UCG UUC AUC">
    Close, but not quite. Recall the DNA is used as a template to produce a complimentary strand (not directly mimick the template) </opt>
    </choice>


3. Inspect the image below, paying attention to the coverage of reads (histogram showing quantity of mapped RNA-Seq reads to genes).

<figure>
  <img src="igv-diff-exp.png" width="100%"/>
  <figcaption><b>Figure 4</b>: IGV view of ADE1 (left) & KIN3 (right)</figcaption>
</figure>

***

What statement can we make about `KIN3`?

<choice id="7">
<opt text="The KIN3 gene is highly expressed">
Not quite, particularly in comparison to ADE1</opt>
<opt text="The KIN3 gene is not expressed" correct=true>
Correct, for this particular sample. (We would need at least 3 samples to test this statistically)</opt>
</choice>

## TCGA Dataset

In this section you are tasked with making plots and answering questions about them..

1. Make a boxplot of `GATA3` expression across `BRCA`, `OV` and `LUSC` cancer types.

<codeblock id="03_04">
</codeblock>

In which cancer subtype is `GATA3` expression the highest? 

<choice id="8">
<opt text="Ovarian serous cystadenocarcinoma">
Not quite</opt>
<opt text="Lung squamous ell carcinoma">
Not quite</opt>
<opt text="Breast Cancer" correct=true>
Correct, the boxplot indicates expression is highest in `BRCA`.</opt>
</choice>

2. Scenario given below:

Your supervisor is interested in `GATA3` expression in `LUSC` vs. `OV` (she/he does not care about `BRCA`). She/he wants you to perform a statistical test to check if `GATA3` expression is higher in `LUSC` when compared to `OV`. Perform the following steps: 

- Subset the dataframe to remove `BRCA` samples. (Using `subset()` and logical operators)
- Set up the comparison `OV` vs. `LUSC` using a list().
- Produce a boxplot of `GATA3` expression in `OV` & `LUSC`, using: 
    - The `"lancet"` color palette.
    - Color the fill by `"cancer_type"`
    - Use `theme_bw()` for `ggtheme`
    - Use an empty string for `xlab`
    - Use `"GATA3 Expression"` as the `ylab`
    - Insert `"Week 3 Worksheet"` as the plot `title`
- For `stat_compare_means()`:
    - Insert the comparison list
    - Use `"p.format"` in place of `"p.signif"` for the label. 

<codeblock id="03_05">
</codeblock>

***

What is the null hypothesis in this scenario?

<choice id="9">
<opt text="There is no difference in GATA3 expression between LUSC, OV patients" correct=true>
Indeed! This is the null hypothesis (which we will try to reject).</opt>
<opt text="There is a difference in GATA3 expression between LUSC, OV patients">
Not quite, this is the alternative hypothesis.</opt>
</choice>


From the p-value, can we conclude that GATA3 expression is higher in `LUSC` samples?

<choice id="10">
<opt text="Yes :) " correct=true>
A very small p-value of 1.8e-08 indicates we can reject the null hypothesis and accept the alternative.</opt>
<opt text="No :( ">
Not quite, the p-value is very very small....</opt>
</choice>


**Bonus:**

We can see that GATA3 expression is higher in `LUSC`, but we dont want to eyeball results! Below is the output of the `T.test` performed under the hood by `ggpubr()`:

```console
> t.test(GATA3 ~ cancer_type, data=subset_expr)

	Welch Two Sample t-test

data:  GATA3 by cancer_type
t = 5.8489, df = 210.18, p-value = 1.874e-08
alternative hypothesis: true difference in means between group LUSC and group OV is not equal to 0
95 percent confidence interval:
 0.3096700 0.6245342
sample estimates:
mean in group LUSC   mean in group OV 
         -3.758442          -4.225544 
```

Pay attention to the group means at the bottom of the output. 


</exercise>