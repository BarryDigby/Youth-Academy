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

***

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

***

In order to test this (recall Mendel was recording observable traits), Mendel self pollinated F1 generations amongst themselves to ensure a heterozygous cross Pp x Pp, plants of the same genotype. Mendel found that the 'lost' white flower phenotype suddenly reappeared in subsequent populations, albeit at a lower frequency (~25%), or in a 3:1 ratio (purple 3, white 1). Please keep in mind we are only observing one trait here (flower color) and as such the crosses performed by Mednel are termed <span style="color:blue">Monohybrid crosses</span>.

***

<span style="color:red">Note</span>: it is important to appreciate that the hereditary trait being tracked (flower color) is determined by genes that occur in pairs, where one of each pair is inherited from each parent. This concept of <i>individual</i> traits forms the basis of Mendels <span style="color:blue">law of segregation</span> which essentially describes the process of meiosis - <i>"During meiosis, homologous pairs of chromosomes (and the genes that compose them) separate from one another and are packaged into separate gametes. At fertilization, gametes combine at random to form the individuals of a new generation."</i>

<figure>
  <img src="segregation-laws.png" width="100%"/>
  <figcaption><b>Figure 3</b>: Law of segregation.</figcaption>
</figure>

***

Having concluded that 'blending' is not an expected outcome of parental trait combinations, Mendel hypothesized that each parent contributed some particulate matter towards the offspring, termed elementin. We now know that elementin is the DNA sequence (gene) that encodes proteins governing observable traits. As the structure of DNA was roughly 90 years away from being discovered, Mendel continued his experiments on peas, with a focus on the distribution of elementin amongst offspring. 

***

Mendel had determined what happened when two hetero/homozygous plants for one trait are crossed, and now wanted to determine what the outcome was when tracking two traits. He began by crossing pure-bred plants that were dominant and recessive for the respective traits (seed color, seed shape), which as we know, will always result in heterozygote F1 generation (RrYy). When the F1 population is crossed (RrYy x RrYy), Mendel observed a ratio of 9:3:3:1 (as depicted in the figure below). These results reflected the 3:1 ratio observed earlier - note how when we choose one trait to study from the F2 population, let's use seed color, we can observe a 3:1 ratio amongst the wrinkled seeds, and a 9:3 (aka 3:1) ratio amongst the smooth seeds. These results were as if two monohybrid crosses were performed, leading Mendel to postulate that alleles segregate independently of each other, forming Mendels third law of <span style="color:blue">independent assortment</span>.


<figure>
  <img src="assortment-law.png" width="100%"/>
  <figcaption><b>Figure 3</b>: Law of independent assortment.</figcaption>
</figure>

## Quiz  

The genetic constitution of an organism is referred to as:

<choice>
<opt text="a gene">
Not quite, a gene is only one stretch of DNA nucleotides.</opt>
<opt text="a genome">
Not quite, a genome can be thought of as the genetic constitution of a cell</opt>
<opt text="a phenotye">
Not quite, a phenotype represents the observable traits in an organism</opt>
<opt text="a genotype" correct=true>
Yes! The genetic composition of an entire organism is its genotype.</opt>
</choice>


</exercise>

<exercise id="3" title="What is a Genome?">

The previous section discussed Mendels rules regarding the transfer of genetic information between parents and offspring. In this section we will focus on a biochemical, genetic and computational view of genomes, which will lead to the discussion of genes.

***

The human body is composed of billions of cells, with each cell specialised to perform a certain task. For example, the human kidney hosts > 26 different cell types, which form different anatomical structures to aid in controlling filtration, ion homeostasis, and blood pressure. Despite the remarkable diversity, these cells are all descendants of a single-cell embryo which contains the 'genetic instructions' to replicate, mature and carry out specific functions of its defined cell type. We have already hinted that these packets of instructions are encoded in our DNA.

***

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

What about a computational view of a genome? How are they stored? Surprisingly simplistic, a species genome is stored in a FASTA file, which are human readable text files containing a header identifying the sequence, followed by the DNA sequence of the species. You can spot a FASTA file by the file extension it uses, typically ending in `.fa` or `.fasta`.

```output
>HSBGPG Human gene for bone gla protein (BGP)
GGCAGATTCCCCCTAGACCCGCCCGCACCATGGTCAGGCATGCCCCTCCTCATCGCTGGGCACAGCCCAGAGGGT
ATAAACAGTGCTGGAGGCTGGCGGGGCAGGCCAGCTGAGTCCTGAGCAGCAGCCCAGCGCAGCCACCGAGACACC
ATGAGAGCCCTCACACTCCTCGCCCTATTGGCCCTGGCCGCACTTTGCATCGCTGGCCAGGCAGGTGAGTGCCCC
CACCTCCCCTCAGGCCGCATTGCAGTGGGGGCTGAGAGGAGGAAGCACCATGGCCCACCTCTTCTCACCCCTTTG
GCTGGCAGTCCCTTTGCAGTCTAACCACCTTGTTGCAGGCTCAATCCATTTGCCCCAGCTCTGCCCTTGCAGAGG
GAGAGGAGGGAAGAGCAAGCTGCCCGAGACGCAGGGGAAGGAGGATGAGGGCCCTGGGGATGAGCTGGGGTGAAC
CAGGCTCCCTTTCCTTTGCAGGTGCGAAGCCCAGCGGTGCAGAGTCCAGCAAAGGTGCAGGTATGAGGATGGACC
TGATGGGTTCCTGGACCCTCCCCTCTCACCCTGGTCCCTCAGTCTCATTCCCCCACTCCTGCCACCTCCTGTCTG
GCCATCAGGAAGGCCAGCCTGCTCCCCACCTGATCCTCCCAAACCCAGAGCCACCTGATGCCTGCCCCTCTGCTC
CACAGCCTTTGTGTCCAAGCAGGAGGGCAGCGAGGTAGTGAAGAGACCCAGGCGCTACCTGTATCAATGGCTGGG
GTGAGAGAAAAGGCAGAGCTGGGCCAAGGCCCTGCCTCTCCGGGATGGTCTGTGGGGGAGCTGCAGCAGGGAGTG
GCCTCTCTGGGTTGTGGTGGGGGTACAGGCAGCCTGCCCTGGTGGGCACCCTGGAGCCCCATGTGTAGGGAGAGG
AGGGATGGGCATTTTGCACGGGGGCTGATGCCACCACGTCGGGTGTCTCAGAGCCCCAGTCCCCTACCCGGATCC
CCTGGAGCCCAGGAGGGAGGTGTGTGAGCTCAATCCGGACTGTGACGAGTTGGCTGACCACATCGGCTTTCAGGA
GGCCTATCGGCGCTTCTACGGCCCGGTCTAGGGTGTCGCTCTGCTGGCCTGGCCGGCAACCCCAGTTCTGCTCCT
CTCCAGGCACCCTTCTTTCCTCTTCCCCTTGCCCTTGCCCTGACCTCCCAGCCCTATGGATGTGGGGTCCCCATC
ATCCCAGCTGCTCCCAAATAAACTCCAGAAG
>HSGLTH1 Human theta 1-globin gene
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

</exercise>