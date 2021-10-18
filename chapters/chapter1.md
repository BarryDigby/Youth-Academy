---
title: 'Week 1: Introduction to Genomics' 
description:
prev: null
next: /chapter2
id: 1
type: chapter
---
<exercise id="1" title="What is Genomics?" type="slides">

<slides source="week1_intro_01">
</slides>

</exercise>

<exercise id="2" title="Basic rules of Genetics">
In the 1860s <span style="color:blue">Gregor Mendel</span> discovered the basic rules of genetics that govern how genes are passed from one organism to it's offspring (referred to as <span style="color:blue">heredity</span> or <span style="color:blue">biological inheritance</span>). Using pea plants, Mendel demonstrated that an organisms genome is organised in a collection of discrete, seperable packets of information, now called <span style="color:blue">genes</span>. Mendel also demonstrated that the physical makeup of an organism could be divided into a series of discrete entities.

***

Mendel's research implied that the genetic constitution of an organism (it's <span style="color:blue">genotype</span>) could be divided into thousands of genes, whilst in parallel, the observable, 'outward appearace' of an organism (it's <span style="color:blue">phenotype</span>) could be subdivided into a large number of discrete physical traits, which are controlled by distinct genes (in conjunction with environmental factors). See the figure below for 7 phenotypic traits Mendel observed in pea plants:

***

<figure>
  <img src="mendels-pea-plant.jpg" width="100%"/>
  <figcaption><b>Figure 1</b>: Mendel observed 7 binary traits in pea plants.</figcaption>
</figure>

***

The conventional train of thought before Mendels experiments were that inhereted traits were 'blended' from parents. Using this logic, by crossing a purple flowered plant with a white flowered plant, one might expect the offspring to be a light pink color - a similar effect of mixing colored paints. Mendel demonstrated this was not the case. By crossing pure-bred purple flowered pea plants with white flowered pea plants Mendel observed that the offspring flower color was purple. The inheritance pattern of this characteristic is considered a <span style="color:blue">dominant trait</span>, as purple flowers are observable in every offspring (<b>Figure 2</b>).


From this observation, Mendel proposed his first principle, the <span style="color:blue">principle of uniformity</span> which states that, if two plants that differ in just one trait are crossed, then the resulting offspring will be uniform in the chosen trait.

<span style="color:red">Note:</span> 
- "Pure-bred" in this scenario refers to a <span style="color:blue">homozygous</span> genotype, i.e PP or pp. 
- <span style="color:blue">Heterozygous</span> genotypes are carriers of both (Pp), however only the dominant trait is observable.
- <span style="color:blue">Alleles</span> are multiple instances of a gene. For example, we can represent the gene coding for seed shape using the letter r. We record round seeds as `R` and the wrinkled seeds as `r` to denote two different alleles <i>for the same gene</i>. After performing crosses, we can determine which alleles are dominant/recessive. 

<figure>
  <img src="uniformity-law.png" width="100%"/>
  <figcaption><b>Figure 2</b>: Law of dominance/uniformity.</figcaption>
</figure>

***

In the above figure, there are no white flowered phenotypes observable in the first generation of offspring (F1). Mendel wanted to test if the recessive trait (white flowers) were still present in the population, or if the dominant trait had transcended all subsequent generations. By looking at the above figure, we can see the answer. The recessive trait is indeed present - it is encoded as a lowercase p , whilst uppercase P represents the dominant purple trait - each offspring is a heterozygote (Pp) and as such are all carriers of the recessive genotype. 


In order to test this (recall Mendel was recording observable traits), Mendel self pollinated F1 generations amongst themselves to ensure a heterozygous cross Pp x Pp, plants of the same genotype. Mendel found that the 'lost' white flower phenotype suddenly reappeared in subsequent populations, albeit at a lower frequency (~25%), or in a 3:1 ratio (purple 3, white 1). Please keep in mind we are only observing one trait here (flower color) and as such the crosses performed by Mednel are termed <span style="color:blue">Monohybrid crosses</span>.


<span style="color:red">Note</span>: it is important to appreciate that the hereditary trait being tracked (flower color) is determined by genes that occur in pairs, where one of each pair is inherited from each parent. This concept of <i>individual</i> traits forms the basis of Mendels <span style="color:blue">law of segregation</span> which essentially describes the process of meiosis - <i>"During meiosis, homologous pairs of chromosomes (and the genes that compose them) separate from one another and are packaged into separate gametes. At fertilization, gametes combine at random to form the individuals of a new generation."</i>

<figure>
  <img src="segregation-laws.png" width="100%"/>
  <figcaption><b>Figure 3</b>: Law of segregation.</figcaption>
</figure>

***

Having concluded that 'blending' is not an expected outcome of parental trait combinations, Mendel hypothesized that each parent contributed some particulate matter towards the offspring, termed elementin. We now know that elementin is the DNA sequence (gene) that encodes proteins governing observable traits. As the structure of DNA was roughly 90 years away from being discovered, Mendel continued his experiments on peas, with a focus on the distribution of elementin amongst offspring. 


Mendel had determined what happened when two hetero/homozygous plants for one trait are crossed, and now wanted to determine what the outcome was when tracking two traits. He began by crossing pure-bred plants that were dominant and recessive for the respective traits (seed color, seed shape), which as we know, will always result in heterozygote F1 generation (RrYy). When the F1 population is crossed (RrYy x RrYy), Mendel observed a ratio of 9:3:3:1 (as depicted in the figure below). These results reflected the 3:1 ratio observed earlier - note how when we choose one trait to study from the F2 population, let's use seed color, we can observe a 3:1 ratio amongst the wrinkled seeds, and a 9:3 (aka 3:1) ratio amongst the smooth seeds. These results were as if two monohybrid crosses were performed, leading Mendel to postulate that alleles segregate independently of each other, forming Mendels third law of <span style="color:blue">independent assortment</span>.


<figure>
  <img src="assortment-law.png" width="100%"/>
  <figcaption><b>Figure 3</b>: Law of independent assortment.</figcaption>
</figure>

</exercise>

<exercise id="3" title="What is a Genome?">

The previous section discussed Mendels rules regarding the transfer of genetic information between parents and offspring. In this section we will focus on a biochemical, genetic and computational view of genomes, which will lead to the discussion of genes.

The human body is composed of billions of cells, with each cell specialised to perform a certain task. For example, the human kidney hosts > 26 different cell types, which form different anatomical structures to aid in controlling filtration, ion homeostasis, and blood pressure. Despite the remarkable diversity, these cells are all descendants of a single-cell embryo which contains the 'genetic instructions' to replicate, mature and carry out specific functions of its defined cell type. We have already hinted that these packets of instructions are encoded in our DNA.

# DNA Structure

A molecule of <span style="color:blue">DNA</span> is a polymer made of recurring units called nucleotides. The four nucleotides in DNA molecules, Adenine, Guanine, Cytosine and Thymine (coded as four letters: A, C, G, and T) in a specific sequence, store our genetic code. DNA is organized in a double-helix form where two complementary polymers interlace with each other and twist into the familiar helical shape. This shape is further condensed and wrapped around histones, condensing into chromatin (a complex of DNA and histones). This is beyond the scope of our course, but bear in mind that the study of chromatin accessability is an active area of research in bioinformatics - the ATAC-Seq assay is designed to detect areas of open chromatin within a genome. Areas of open chromatin are highly correlated with increased expression for the genes found in the open region.

<figure>
  <img src="dna-nih.jpg" width="100%"/>
  <figcaption><b>Figure 1</b>: Structure and packaging of DNA</figcaption>
</figure>

***

Below in <b>Figure 2</b> are images of human chromosomes (<span style="color:blue">karyotypes</span>) captured using fluorescence in situ hybridization (FISH) methods. Humans have 22 pairs of autosomes (chr 1 ... chr 22) and one pair of sex chromosomes from each parent (XX female, XY male). <b>Figure 2 (b)</b> shows the chromosomes aligned in metaphase, where each chromosome pair is clearly visible.

<figure>
  <img src="karyotype.png" width="100%"/>
  <figcaption><b>Figure 2</b>: Human chromosomes: (a) </figcaption>
</figure>

***
# Computational Representation of Genomes

How are genomes represented computationally? Surprisingly simplistic, a species genome is stored in a FASTA file, which are human readable text files containing a header (`>`) naming the sequence, followed by the DNA sequence. 

You can spot a FASTA file by the file extension it uses, typically ending in `.fa` or `.fasta`. Below is the top ~25 lines of the human genome (file downloaded from [Gencode](https://www.gencodegenes.org/human/) which provide a rich source of annotation for the human genome). Naturally, the file begins with Chromosome 1 (denoted as `chr1 1`).

```output
>chr1 1
ACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTA
ACCCTAACCCTAACCCTAACCCTAACCCAACCCTAACCCTAACCCTAACCCTAACCCTAA
CCCTAACCCCTAACCCTAACCCTAACCCTAACCCTAACCTAACCCTAACCCTAACCCTAA
CCCTAACCCTAACCCTAACCCTAACCCTAACCCCTAACCCTAACCCTAAACCCTAAACCC
TAACCCTAACCCTAACCCTAACCCTAACCCCAACCCCAACCCCAACCCCAACCCCAACCC
CAACCCTAACCCCTAACCCTAACCCTAACCCTACCCTAACCCTAACCCTAACCCTAACCC
TAACCCTAACCCCTAACCCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAAC
CCCTAACCCTAACCCTAACCCTAACCCTCGCGGTACCCTCAGCCGGCCCGCCCGCCCGGG
TCTGACCTGAGGAGAACTGTGCTCCGCCTTCAGAGTACCACCGAAATCTGTGCAGAGGAC
AACGCAGCTCCGCCCTCGCGGTGCTCTCCGGGTCTGTGCTGAGGAGAACGCAACTCCGCC
GTTGCAAAGGCGCGCCGCGCCGGCGCAGGCGCAGAGAGGCGCGCCGCGCCGGCGCAGGCG
CAGAGAGGCGCGCCGCGCCGGCGCAGGCGCAGAGAGGCGCGCCGCGCCGGCGCAGGCGCA
GAGAGGCGCGCCGCGCCGGCGCAGGCGCAGAGAGGCGCGCCGCGCCGGCGCAGGCGCAGA
CACATGCTAGCGCGTCGGGGTGGAGGCGTGGCGCAGGCGCAGAGAGGCGCGCCGCGCCGG
CGCAGGCGCAGAGACACATGCTACCGCGTCCAGGGGTGGAGGCGTGGCGCAGGCGCAGAG
AGGCGCACCGCGCCGGCGCAGGCGCAGAGACACATGCTAGCGCGTCCAGGGGTGGAGGCG
TGGCGCAGGCGCAGAGACGCAAGCCTACGGGCGGGGGTTGGGGGGGCGTGTGTTGCAGGA
GCAAAGTCGCACGGCGCCGGGCTGGGGCGGGGGGAGGGTGGCGCCGTGCACGCGCAGAAA
CTCACGTCACGGTGGCGCGGCGCAGAGACGGGTAGAACCTCAGTAATCCGAAAAGCCGGG
ATCGACCGCCCCTTGCTTGCAGCCGGGCACTACAGGACCCGCTTGCTCACGGTGCTGTGC
```
***

</exercise>

<exercise id="4" title="What is a Gene?">

The definition of a gene is fluid (it depends if you ask a geneticist vs. a molecular biologist) - we can compromise with the following definition:

<b><i>A gene is a DNA sequence that specifies a functional RNA molecule.</i></b>

I have been purposely vague here, it is incorrect to state "one gene = one protein" as genes can encode multiple proteins via alternative splicing, it is also incorrect to assume every gene produces a protein as some genes produce RNA molecules with functional roles that are never translated into a protein.

If activated, genes are transcribed into <span style="color:blue">messenger RNAs (mRNAs)</span> in the nucleus (in eukaryotes), followed by (if the gene is protein coding) translation of mRNA into proteins in the cytoplasm. This is essentially a process of information transfer between information-carrying polymers; DNA, RNA and proteins, known as the “central dogma” of molecular biology. 


<figure>
  <img src="central-dogma.png" width="100%"/>
  <figcaption><b>Figure 1</b>: Central Dogma of biology.</figcaption>
</figure>

***

One final note on the central dogma. Double stranded DNA is used as the template to produce a single stranded RNA molecule, which uses A/U/G/C (note Thymine is replaced by Uracil in RNA) nucleotide bases. This RNA molecule is then translated to amino acids using <i>triplets of DNA</i>. We can see which amino acid an RNA triplet codes for in the codon table below:

<figure>
  <img src="codon-table.png" width="100%"/>
  <figcaption><b>Figure 2</b>: Codon tables. Protein abbreviations: <b>Ala</b>: Alanine; <b>Arg</b>: Arginine; <b>Asn</b> Asparagine; <b>Asp</b>: Aspartate; <b>Cys</b>: Cysteine; <b>Glu</b>: Glutamate; <b>Gln</b>: Glutamine; <b>Gly</b>: Glycine; <b>His</b>: Histidine; <b>Ile</b>: Isoleucine; <b>Leu</b>: Leucine; <b>Lys</b>: Lysine; <b>Met</b>: Methionine; <b>Phe</b>: Phenylalanine; <b>Pro</b>: Proline; <b>Ser</b>: Serine; <b>Thr</b>: Threonine; <b>Trp</b>: Tryptophan; <b>Tyr</b> Tyrosine; <b>Val</b>: Valine.</figcaption>
</figure>

***
# Computational Representations of a Gene

As a genomics data scientist, you will usually encounter genes as a set of coordinates in an annotation file. The coordinates map to a specific region in the genome, representing the DNA sequence for the gene. In the example below, I have subset a `GTF` (Gene Transfer File) to find the `HBQ1` gene. 

```output
chr16	HAVANA	gene	180459	181179	.	+	.	gene_id "ENSG00000086506.3"; gene_type "protein_coding"; gene_name "HBQ1"; level 2; hgnc_id "HGNC:4833"; havana_gene "OTTHUMG00000060727.2";
```

The columns of a `GTF` file are explained below: 

1. seqname - name of the chromosome or scaffold; chromosome names can be given with or without the 'chr' prefix.
2. source - name of the program that generated this feature, or the data source (database or project name)
3. feature - feature type name, e.g. Gene, Variation, Similarity
4. start - Start position* of the feature, with sequence numbering starting at 1.
5. end - End position* of the feature, with sequence numbering starting at 1.
6. score - A floating point value.
7. strand - defined as + (forward) or - (reverse).
8. frame - One of '0', '1' or '2'. '0' indicates that the first base of the feature is the first base of a codon, '1' that the second base is the first base of a codon, and so on..
9. attribute - A semicolon-separated list of tag-value pairs, providing additional information about each feature.

***

We can see that the `HBQ1` gene is on chromosome 16, with start and end positions at 180459 and 181179 (nucleotides), respectively. Take a look at this gene presented on a 'genome track' developed by `IGV` (Integrative Genomics Viewer) at the following link: [https://igv.org/app/](https://igv.org/app/). In the search bar at the top of the page, type `HBQ1` and hit search. 

***

### DNA sequence

Below is the FASTA sequence for `HBQ1`. It contains 720 nucleotide bases. 

```output
>HBQ1 Human theta 1-globin gene
CCACTGCACTCACCGCACCCGGCCAATTTTTGTGTTTTTAGTAGAGACTAAATACCATATAGTGAACACCTAAGA
CGGGGGGCCTTGGATCCAGGGCGATTCAGAGGGCCCCGGTCGGAGCTGTCGGAGATTGAGCGCGCGCGGTCCCGG
GATCTCCGACGAGGCCCTGGACCCCCGGGCGGCGAAGCTGCGGCGCGGCGCCCCCTGGAGGCCGCGGGACCCCTG
GCCGGTCCGCGCAGGCGCAGCGGGGTCGCAGGGCGCGGCGGGTTCCAGCGCGGGGATGGCGCTGTCCGCGGAGGA
CCGGGCGCTGGTGCGCGCCCTGTGGAAGAAGCTGGGCAGCAACGTCGGCGTCTACACGACAGAGGCCCTGGAAAG
GTGCGGCAGGCTGGGCGCCCCCGCCCCCAGGGGCCCTCCCTCCCCAAGCCCCCCGGACGCGCCTCACCCACGTTC
CTCTCGCAGGACCTTCCTGGCTTTCCCCGCCACGAAGACCTACTTCTCCCACCTGGACCTGAGCCCCGGCTCCTC
ACAAGTCAGAGCCCACGGCCAGAAGGTGGCGGACGCGCTGAGCCTCGCCGTGGAGCGCCTGGACGACCTACCCCA
CGCGCTGTCCGCGCTGAGCCACCTGCACGCGTGCCAGCTGCGAGTGGACCCGGCCAGCTTCCAGGTGAGCGGCTG
CCGTGCTGGGCCCCTGTCCCCGGGAGGGCCCCGGCGGGGTGGGTGCGGGGGGCGTGCGGGGCGGGTGCAGGCGAG
TGAGCCTTGAGCGCTCGCCGCAGCTCCTGGGCCACTGCCTGCTGGTAACCCTCGCCCGGCACTACCCCGGAGACT
TCAGCCCCGCGCTGCAGGCGTCGCTGGACAAGTTCCTGAGCCACGTTATCTCGGCGCTGGTTTCCGAGTACCGCT
GAACTGTGGGTGGGTGGCCGCGGGATCCCCAGGCGACCTTCCCCGTGTTTGAGTAAAGCCTCTCCCAGGAGCAGC
CTTCTTGCCGTGCTCTCTCGAGGTCAGGACGCGAGAGGAAGGCGC
```

***

### Protein Sequence

We will look up the amino acid sequence and folded protein structure using [Alpha Fold](https://alphafold.ebi.ac.uk/entry/P09105). (please note that the amino acids are represented by one capital character (in contrast to the triple character code used in <b>Figure 2</b>.)). 

```output
>HBQ1 Human theta 1-globin gene
MALSAEDRAL VRALWKKLGS NVGVYTTEAL ERTFLAFPAT KTYFSHLDLS 
PGSSQVRAHG QKVADALSLA VERLDDLPHA LSALSHLHAC QLRVDPASFQ 
LLGHCLLVTL ARHYPGDFSP ALQASLDKFL SHVISALVSE YR
```
***

### Protein Structure

<figure>
  <img src="alpha-fold.png" width="100%"/>
  <figcaption><b>Figure 3</b>: Folded 3D protein structure of HBQ1.</figcaption>
</figure>

***

## Exons, Introns, Start/Stop Codons. 

For those with a keen eye, you may have noticed that the nucleotide sequence for the gene is 720 bases in length. If we divide 720 by 3 (mimicking the conversion of triplets to amino acids), we would expect there to be 240 amino acids in the protein sequence. 


There are only 142 amino acids in the protein produced, what gives? 

<figure>
  <img src="exon-introns.svg" width="100%"/>
  <figcaption><b>Figure 4</b>: HBQ1 gene structure.</figcaption>
</figure>

***

Genes are composed of exon blocks, which are separated with intronic sequences. When DNA is being transcribed to RNA, the transcription machinery will remove the intronic sequences from the RNA, leaving 3 exons that form the `HBQ1` mRNA. 


Sometimes transcription machinery will 'shuffle exons' to generate genetic diversity. In contrast to the canonical `exon 1 + exon 2 + exon 3`, the splicing machinery may discard `exon 2`, producing a protein with `exon 1 + exon 3` This selective use of exons is called <span style="color:blue">alternative splicing</span>.

Reading frames are shown in the figure above, but are beyond the scope of this course. 

</exercise>

<exercise id="5" title="Quiz">

# Genetics Recap

Using '<b>T</b>' to denote the gene for a flowers height - <b>T (tall), t (short)</b> - answer the following questions:

1. What genotype would a pure-bred tall plant have?

    <choice id="1">
    <opt text="<b>TT</b>" correct=true>
    Yes! <b>TT</b> denotes a homozygous genotype for tall plants.</opt>
    <opt text="<b>Tt</b>">
    Close, <b>Tt</b> represents a heterozygous plant.</opt>
    <opt text="<b>tt</b>">
    Not quite, <b>tt</b> represents a homozygous genotype for short plants.</opt>
    </choice>

2. What F1 offspring genotype ratio is generated by crossing heterozygous parents (<b>Tt x Tt</b>)?

    <choice id="2">
    <opt text="<b> TT | Tt | Tt | TT (2:2)</b>">
    No, a 2:2 ratio in this scenario is unlikely.</opt>
    <opt text="<b> TT | TT | Tt | tt (2:1:1)</b>">
    No, a 2:1:1 ratio is not expected here.</opt>
    <opt text="<b> TT | Tt | Tt | tt (1:2:1)</b>" correct=true>
    Yes! A 1:2:1 ratio is expected from crossing two heterozygous parents.</opt>
    </choice>

3. In the answer above, the phenotype ratio is 3:1 tall/short. What can we say about the T allele? 

    <choice id="3">
    <opt text="It is recessive">
    No, if <b>T</b> was recessive, there would be 3 short plants.</opt>
    <opt text="It exhibits incomplete dominance">
    No, if this was the case we would see 1 tall, 2 medium (<b>Tt</b>) and 1 short plant phenotypes.</opt>
    <opt text="It is dominant" correct=true>
    Yes! <b>Tt</b> genotypes produce tall plants, as the <b>T</b> allele is dominant over <b>t</b>.</opt>
    </choice>

***

The genetic constitution of an organism is referred to as:

<choice id="4">
<opt text="a gene">
Not quite, a gene is only one stretch of DNA nucleotides.</opt>
<opt text="a genome">
Not quite, a genome can be thought of as the genetic constitution of a cell</opt>
<opt text="a phenotye">
Not quite, a phenotype represents the observable traits in an organism</opt>
<opt text="a genotype" correct=true>
Yes! The genetic composition of an entire organism is its genotype.</opt>
</choice>

***
## Gene Recap

Go to the [online IGV browser](https://igv.org/app/) and search for the gene `KRT9`. Answer the following questions regarding `KRT9`:

1. How many exon blocks does KRT9 have? 

    <choice id="5">
    <opt text="6">
    No, count the solid blue blocks.</opt>
    <opt text="7">
    No, count the solid blue blocks.</opt>
    <opt text="8" correct=true>
    Yes, KRT9 has 8 exon blocks.</opt>
    <opt text="9">
    No, count the solid blue blocks.</opt>
    </choice>

2. What gene is upstream and downstream of KRT9?

    <choice id="6">
    <opt text="LINC00974 & KRT14" correct=true>
    Yes that is correct.</opt>
    <opt text="KRT9 & KRT14">
    Not quite.</opt>
    <opt text="HBQ1 & LINC00874">
    Not quite.</opt>
    <opt text="BRCA1 & KRT10">
    Not quite.</opt>
    </choice>

3. What strand is KRT9 on? 

    <choice id="7">
    <opt text="antisense (-)" correct=true>
    Yes that is correct. The genomic coordinates of the gene indicate this (<b><i>chr17:41,565,836-41,572,059 (-)</i></b>) and the fact its arrows point right to left.</opt>
    <opt text="sense (+)">
    Not quite.</opt>
    </choice>


</exercise>

<exercise id="6" title="Coding Warm Up">

Some weeks of the program will be centered around coding. The following set of exercises should serve as an introduction to using R. 

## Variables
In programming, variables allow us to store information and associate that information with a name. In R, we assign variables by using the assignment operator, an arrow sign `<-` made with a carat and a dash.

```R
course_name <- "Youth Academy"
```

In the example above, we store the string value "Youth Academy" in a variable called course\_name. Variable names can't have spaces or symbols in their names other than an underscore (\_). They can't begin with numbers but they can have numbers after the first letter (e.g, var\_1  is OK).

If we need to update a variable but perform the same logical process on it, we can change its value! 

<codeblock id="01_02">
</codeblock>

Above, we create the variable message\_string, assign a welcome message, and print the greeting. 
After we greet the user, we want to wish them goodbye. We then update message\_string to a departure 
message and print it.

**Note**: You can also use = instead of <- to assign a value. However popular nomenclature dictates the use of `<-`. 

## An oversized calculator

As R is a statistical programming language, it should come as no surprise we will first cover simple calculations. R performs addition, subtraction, multiplication, division, exponentiation and modulo with `*` `-` `+` `/` `^` `%%`.

Note: to perform a calculation, you do not have to assign it to a variable. R will interpret each line individually and evaluate the code. See below for an example.

```R
2 + 2

4/2
```
```console
[1] 4
[1] 2
```

In reality, it is rare to come across code that prints intermediate calculations to output. Usually we assign calculations to variables and perform mathematical operations on the variable.

<codeblock id="01_01">
</codeblock>

***
## Data Types

Let’s dive into how R interprets different types of data. In R and in programming, <span style="color:blue">data types are an attribute of data which tells the compiler how we want to use the data </span>.

* **Numeric**: Any number with or without a decimal point: `23`, `0.03` and the numeric null value `NA`.
* **Character**: Any grouping of characters on your keyboard (letters, numbers, spaces, symbols, etc.) or text. When surrounded by single quotes: ' ... ' or double quotes " ... ", it becomes a **string**.
* **Logical**: This data type only has two possible values— either TRUE or FALSE (without quotes). It’s helpful to think of logical types or **booleans**, i.e answers to a “yes” or “no” question.
* **Vectors**: A list of related data that is all the same type.
* **NA**: This data type represents the absence of a value, and is represented by the keyword NA (without quotes). It has its own significance in the context of the different types. That is there is a numeric NA, a character NA,and a logical NA.

```R
class(2) # numeric
class('hello') # character
class('23') #character <- numeric in quotes becomes a character
class (FALSE) #logical
class(NA) #logical
```

## Vectors
As mentioned in Data Types,  vectors are a list of elements that contain items of the same data type.

An example of a character vector:
```R
spring_months <- c("March", "April", "May", "June")
```

In the example above, we created a new variable `spring_months` that contains a character vector. In order to <span style="color:red">c</span>oncatenate the individual character strings to a vector, we use `c()`. 

A few operations you shopuld be able to perform on a vector:

* Check the type of elements in a vector by using `typeof(vector_name)`
* Check the length of a vector by using `length(vector_name)`
* Access individual elements in the vector by using `[]` and placing the element position inside the square brackets. For example, if we wanted to access the second element we would write: `vector_name[2]`. 

<codeblock id="01_03">
</codeblock>

***

**Note: In R, you start counting elements at position one, not zero!**

We can join two vectors together using the `c()` function in R:
```R
vector <- c(1,2,3,4,5)
vector_2 <- c(6,7,8,9,10)

x <- c(vector, vector_2)

print(x)

[1] 1 2 3 4 5 6 7 8 9 10
```

Be careful not to mix data types in a vector. Observe below what happens when mixing variables, characters and numerics in a vector:

<codeblock id="01_04">
</codeblock>

You may have noticed that mixing data types in a vector might not produce what you hoped for. The presence of one character in `tester_1` renders the entire vector as a character data type. 

**Note:** R stores numbers as doubles, hence why it returned a double for `typeof(tester_1)`. That is to say, `double()` is the same as `numeric()`. 

## Sandbox

Feel free to play around with the codeblock given below, it does not expect any answer so go wild. I'm 99.99% sure you can't break anything...

<codeblock id="01_05">
</codeblock>

</exercise>