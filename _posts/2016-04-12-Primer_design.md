---
layout: post
title: "Primer design"
date: 2016-04-12
---

#General protocol for designing primers

###I use [Geneious](http://www.geneious.com/) and [Oligo-analyzer](http://www.idtdna.com/analyzer/Applications/OligoAnalyzer/).  

Date written: 20130809

First, pick a gene and grab sequences from the genome and transcript. I find the drosophila melanogaster ortholog and grab it’s protein sequence (http://www.ncbi.nlm.nih.gov/protein/) and BLAST(proteins) it against the Ant genomes database (http://hymenopteragenome.org/ant_genomes/?q=blast).  Once you have that sequence, BLAST back to drosophila melanogaster to make sure it’s the ortholog of interest. Take your ant protein sequence and tBLASTn (search translated nucleotide database using a protein query) the ant genome and transcript databases. You may get multiple transcripts that originate from 1 genomic region. Take all transcripts and genomic sequence and import it into Geneious(with  simple copy and paste).    

In geneious, map the transcripts onto the genomic region(found in alignment button). You should be able to identify exon exon junctions.    


You are designing primers to the transcript which has annotated exon regions. Ideally, primers should span exon-exon junctions to limit genomic DNA amplification. Amplicons  should range from 100-150 using sybr green method.    


Search for primers in Geneious:   
Settings-   
Min length-100 bps, optimal- 110, max- 150   
Divalent = 3.5 mM   
Tm min – 57, Tm optimal- 59, Tm max- 62   

**Save these settings and you won’t have to touch them again.**    
* Choose 3 primer pairs or sets. They should preferably span exon-exon junctions   


**Screen primers for optimal properties with idt oligoanalyzer**   
http://www.idtdna.com/analyzer/Applications/OligoAnalyzer/    

**Properties of Primers that must be met:**   
* ~63 C Tm  
* 50% GC content
* Minimal hairpinning and homo/hetero dimerization
	* the temperature for hairpinning should be below ~10C of annealing temperature    
	* the rule of thumb: -9-0 Delta G    
	* Avoid complementation at the last 3-4 bps in the 3’ end    

Once you have screened for optimal primer pairs, go back to Geneious, make a new copy of the transcript file and annotate the amplicon. Delete primer searches not used. Check for AT content of amplicons, because AT rich amplicons can show a slight hump in the melting curve analysis.
