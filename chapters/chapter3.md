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
Frederick Sanger first rose to fame for succesfully solving the sequence of the protein insulin via a series of degredation reactions. By utilising fluorodinitrobenzene (FDNB) to tag and identify the termini amino acids of insulin’s two chains as Glyceine and Phenylalanine, Sanger proceeded to degrade the protein using enzyme hydrolysis and applying 5,5'-dithiobis-2-nitrobenzoic acid (DTNB) to identify the amino acids at the position of the fresh break - much like snapping beads off a necklace. Sanger was able to determine the amino acid sequence of insulin and was awarded the nobel prize in chemistry in 1958. 


<figure>
  <img src="insulin-struct.png" width="100%">
  <figcaption><b>Figure 1</b>: Insulin amino acid sequence.</figcaption>
</figure>

***

Next, Sanger turned his attention to DNA at the university of Cambridge. The chemical techniques previously employed on proteins were not working on DNA - there are only 4 bases compared to 20 amino acids - the fragmented sequences were much longer and far too similar to each other to correctly infer the original sequence. In an effort to combat this, Sanger ditched previous techniques and decided to build DNA rather than break it down. 

***

Sanger tweaked traditional PCR (polymerase chain reaction) which works by incorporating deoxyribose nucleotide triphosphates (dNTPs) to expand the growing template DNA strand (dATP, dTTP, dGTP and dTTP are four common dNTPs used in PCR) with the help of Taq DNA polymerase. The addition of dideoxynucleoside triphosphates (ddNTPs) which were flourescently labelled, and chemically altered such that phosphodiester bonds could not be formed with ddNTPs. The outcome of using 'altered dNTPs' was whenever a ddNTPs was randomnly incorporated by DNA polymerase, the reaction was terminated and you were left with a sequence of DNA with a flourescent probe at the end. This was known as <span style="color:blue">chain termination PCR<span>/. 

***

The net result is millions of DNA fragments of differing length. Using gel electrophoresis, the sequences were sorted by size. Larger sequences represented bases towards the end of the sequence, whilst shorter sequences represented bases towards the beginning of the sequence. Hopefully the figure below can help you conceptualise lining up the bases. How did they know which base was which? Each of the four modified ddNTPs carried a distinct fluorescent label. The emitted fluorescence signal from each excited fluorescent dye determines the identity of the nucleotide in the original DNA template.

<figure>
  <img src="sanger.png" width="100%">
  <figcaption><b>Figure 2</b>: Sanger Sequencing. </figcaption>
</figure>


</exercise>