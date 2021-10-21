---
title: 'Week 3: RNA-Seq' 
description:
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

To overcome this problem, Sanger tweaked traditional PCR by using dideoxynucleoside triphosphates (ddNTPs) - chemically modified dNTPs which lacked a 3' hydroxyl group that was crucial in forming a bond with the incoming dNTP, thereby ending the process of DNA extension prematurely. This new technique was dubbed <span style="color:blue">chain termination PCR</span>. 

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





</exercise>