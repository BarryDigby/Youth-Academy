---
title: 'Week 3: RNA-Seq' 
description: ''
prev: /chapter2
next: /chapter4
id: 3
type: chapter
---
<exercise id="1" title="Gene Expression">

Recall the image from week one, a schematic of the central dogma depicting the transfer of information from DNA to RNA to protein. In the following sections we will flesh this out and show how it relates to genomic data science!

<figure>
  <img src="central-dogma.png" width="100%"/>
  <figcaption><b>Figure 1</b>: Central Dogma of biology.</figcaption>
</figure>

***

Mendel demonstrated that phenotypic traits (outward appearances) are controlled by 'packets of information' which we now know are genes - stretches of DNA in our genome. Mendel <b> did not know </b> that genes were the template for proteins, or even try to speculate how genes could affect phenotypes.

## Linking Genes to Proteins

Years later (1940s) George Beadle and Edward Tatum conducted a series of experiments on bread mould that showed a clear connection between genes and enzymes. Note: enzymes are proteins that catalyze chemical reactions, without themselves being consumed in the process. In this example, mould enzymes break down sugars, salts, vitamins into building blocks (amino acids) needed by the mould to survive.


By using x-rays on mould spores, Beadle and Tatum created mutants that could not grow when given a minimal food source of sugar, salts and 1 vitamin - where normally the mould would thrive. This meant that the mutant mould could not make (synthesize) an essential molecule required for growth on the minimal food source - something was missing or broken!


To figure out which process was 'broken', Beadle and Tatum set up test tubes with amino acids for the mutant mould. They found that the mutant mould grew on an Arginine substrate, which meant that the x-ray damage had broken the gene responsible for creating a protein involved in Arginine synthesis, ultimately starving the mould as it could not convert the food into building blocks for life.

<figure>
  <img src="mould.png" width="100%"/>
  <figcaption><b>Figure 2</b>: Beadles and Tatums experiment: The mutant mould </figcaption>
</figure>

***

## How is DNA converted to a Protein?
First, the information encoded in a gene is copied into an RNA molecule known as­ ­<span style="color:blue"> pre-messenger RNA (pre-mRNA)</span>. This step, called <span style="color:red">transcription</span>, takes place in the nucleus. The pre-mRNA is then processed into a finished <span style="color:blue">messenger RNA (mRNA)</span> that moves through a nuclear pore into the cytoplasm. Here, the information encoded in the mRNA is converted into the sequence of amino acids in a polypeptide chain, which is processed and folded to form a protein. This step is called ­<span style="color:red">translation</span>.

<figure>
  <img src="flow.png" width="75%"/>
  <figcaption><b>Figure 3</b>: The flow of genetic information, including cellular location.</figcaption>
</figure>

***
# Transcription produces genetic messages

Transcription begins when the double stranded DNA is unwound and one strand is used as a template for making pre-mRNA. It involves several steps:

1. <span style="color:red"> Initiation </span>: The enzyme RNA polymerase binds to a specific location in DNA called a promoter region - telling the enzyme "this is where the gene starts". (Figure 4 left)

2. <span style="color:red"> Elongation </span>: RNA polymerase reads the nucleotide sequence of the template DNA strand. As it moves along, it inserts and links together complementary RNA nucleotides to form a pre-mRNA molecule. (Figure 4 right)

3. <span style="color:red"> Termination </span>: The RNA polymerase breaks the link between the template DNA strand and the pre-mRNA molecule, releasing the pre-mRNA. The DNA reforms it's double helix. (Figure 5)

<figure>
  <img src="transcription.png" width="100%"/>
  <figcaption><b>Figure 4</b>: Initiation and Elongation steps in transcription.</figcaption>
</figure>

<figure>
  <img src="trans_2.png" width="100%"/>
  <figcaption><b>Figure 5</b>: Termination of Transcription.</figcaption>
</figure>

***

## Messenger RNA Processing

pre-mRNAs are processed in the nucleus to remove introns (nucleotide sequences present in genes that are not translated into the amino acid sequence of a protein). Introns occur between exons, the nucleotide sequences that remain in the mRNA and are translated into the amino acid sequence of a protein. 

As introns are removed, the exons are spliced together to form mature mRNA molecules. I will show you an example of this later with real sequencing reads from yeast, but for now a diagram will suffice:

<figure>
  <img src="splicing.png" width="100%"/>
  <figcaption><b>Figure 6</b>: pre-mRNA to mRNA splicing.</figcaption>
</figure>

***
## Messenger RNA Translation

Some definitions are required before describing translation:

- <span style="color:blue">Ribosomes</span>: A complex (made of ribosomal RNA units) that aid in the production of proteins.

- <span style="color:blue">transfer RNA (tRNA)</span>: A small RNA unit that contains a specific binding site for each amino acid. The binding site is determined by the anticodon.

- <span style="color:blue">anticodon</span>: 3 nucleotide molecules that bind in complimentary fashion to the mRNA codons (3 bases). 

Translation, like transcription, has three steps: initiation, elongation, and termination:

1. <span style="color:red"> Initiation </span>: The tRNA carrying the amino acid methionine (and the complimentary anticodon to AUG) binds to the mRNA. AUG signals the start site of protiens, and is the first amino acid in all proteins (the figure below does not show the start of the polypeptide..)

2. <span style="color:red"> Elongation </span>: As new tRNA molecules are recruited to the ribosome, the amino acids form a <b>peptide bond</b>, forming a chain of amino acids (i.e a poly peptide chain).

3. <span style="color:red"> Termination </span>: Termination occurs when the ribosome reaches a stop codon. The mature peptide is relased, and folded into a 3-D structure.

<figure>
  <img src="translation_med.jpeg" width="80%"/>
  <figcaption><b>Figure 7</b>: Protein Translation</figcaption>
</figure>

***

## Questionnaire 

Run `GEXP_1` zoom poll. 

</exercise>

<exercise id="2" title="RNA Sequencing">

## Motivation


<figure>
  <img src="tumor_norm.png" width="100%"/>
  <figcaption><b>Figure 1</b>: Schematic of gene expression in tumor and normal cells.</figcaption>
</figure>

***
- What is the genetic mechanism underlying the differences between the normal and tumor cells? 

- We want to look at the differences in gene expression - which genes are switched on or off in the cells? 

High Throughput Sequencing allows us to capture the RNA in a cell and quantify the expression of genes - letting us know precisely what genes are turned on or off, and how much each gene is expressed. RNA-Sequencing (RNA-Seq) is divided into three steps:

1. Library Preparation

2. Sequencing

3. Data Analysis (that's us!)

***
## Library Preparation

<figure>
  <img src="prep.png" width="100%"/>
  <figcaption><b>Figure 2</b>: Schematic of RNA Seq library preparation.</figcaption>
</figure>


***

1. Cells are burst open, and RNA is isolated and DNA is removed.

2. We need to cut the RNA into smaller fragments - the sequencing machine can only handle sizes of 200-300 nucleotides.

3. The fragmented RNA is converted to DNA (DNA is more stable than RNA, and we do not lose any information). 

4. Sequencing adapters (human designed sequences) are added to the newly synthesized DNA. 

5. PCR is used to make millions of copies of the fragmented sequences.

6. The sample is checked - are the lenghts of the amplified fragments ok? (200-300nt) and do we have enough RNA for the experiemnt.


***

## Sequencing

<figure>
  <img src="god.png" width="100%"/>
  <figcaption><b>Figure 3</b>: Schematic of Sequencing by flourescent probes.</figcaption>
</figure>

***
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
  <figcaption><b>Figure 4</b>: Phred scores assigned to each called base.</figcaption>
</figure>

***

## Quality Control 

Reads that are poor quality (PHRED score) are removed from our samples, and reads that have adapters must be removed. This can happen when fragments that are too short enter the sequencing machine and the adapters end up being sequenced, not the RNA sequence.

## Genome Alignment

Now that we have all of our RNA seq reads in a FASTQ file, we need to map them back to the reference genome in order to determine which gene they came from.

<figure>
  <img src="kmers.png" width="90%"/>
  <figcaption><b>Figure 5</b>: Genome alignment, the sequencing reads have been split into kmers (black font) and aligned back to the reference genome as kmers.</figcaption>
</figure>

***

 In the video below, we will take a look at aligned RNA-Seq reads in a BAM file, and view them using IGV. This should help you visualise the concept of genome alignment. 


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

I will show you how to make a comparison between groups (Normal vs. Tumor) using the `stat_compare_means()` function. You will then split into groups and make boxplots for 5 genes in a Tumor vs. Normal comparison. You will have to report:

1. Which genes are up-regulated in Tumor samples

2. Are the results statistically significant?

3. If you have time, google the up-regulated genes (try genecards) to read about what role they play in the cell.


<codeblock id="333">
</codeblock>

***

In the gene expression dataset you have to work on, the two levels are `Tumor` and `Normal`, which are under the column called `sample_type`. You should plot `sample_type` on the x-axis, and substitute the gene name into the y-axis argument.


In order to make the comparison, use the same code as above, but switch out `VC` and `OJ` for `Tumor` and `Normal`, respectively. 

Be sure to run `head(expr)` or `colnames(expr)` to check the names of the 5 genes.

<codeblock id="3333">
</codeblock>

</exercise>