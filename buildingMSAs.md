# Building a Multiple Sequence Alignment

The aim of this page is just to give simple instructions of how to extract a multiple sequence alignment from a set of sequences, without explaining anything about how to interpret the resulting alignment, or how the respective software packages work.

## Example sequences

### Example nucleotide sequences

#### <a name="sixHIVRTPolNucleotideExampleSequences"></a>Six HIV RT polymerase nucleotide sequences

[Six HIV RT polymerase nucleotide sequences](./sequences/sixSeqsLouisianaGastroUnaligned.fasta) included in the analysis of Metzker et al. 2002 PMID 12388776 (The case of the Louisiana gastroenterologist).

## Online webservers

### webPRANK

Visit the [server's webpage](http://www.ebi.ac.uk/goldman-srv/webprank/)

Copy and paste FASTA format sequences into the "Sequence data" window.

Click "Start alignment"

Using the [example nucleotide sequences](#sixHIVRTPolNucleotideExampleSequences) given above, we obtain this [sequence alignment](./sequences/sixSeqsLouisianaGastroAligned.webprank.fasta).

### muscle

Visit the [MUSCLE web server](https://www.ebi.ac.uk/Tools/msa/muscle/) hosted by the EMBL-EBI.

Copy and paste FASTA format sequences into the "Enter your input sequences" window.

To get the output alignment in FASTA format (which is understood by more software than the default ClustalW format), in "STEP 2 - Set your Parameters OUTPUT FORMAT: " set the format to "Pearson/FASTA".

Alternatively, to get the sequences in a form that they can be read by many phylogenetic software packages, choose instead "Phylip interleaved" or "Phylip sequential"

Click "Submit"

Using the [example nucleotide sequences](#sixHIVRTPolNucleotideExampleSequences) given above, we obtain this [sequence alignment](./sequences/sixSeqsLouisianaGastroAligned.muscleWebserver.fasta)

## Commandline software

### muscle

This example uses muscle3.8.31 for Mac OSX Intel i86 64 Bit, downloaded [from here](http://www.drive5.com/muscle/downloads.htm).

To run muscle from the command line, we only need to specify the name of the input file (using the -in commandline option), and redirect stdout to a file which will then contain the output alignment

`$  muscle3.8.31_i86darwin64 -in sixSeqsLouisianaGastroUnaligned.fasta > sixSeqsLouisianaGastroAligned.muscleCmdLine.fasta`

This resulted in [this alignment](./sequences/sixSeqsLouisianaGastroAligned.muscleCmdLine.fasta)

### prank

This example use the prank OSX 64 bit binary released 10.01.2014 (prank.osx64.140110) downloaded [from here](https://code.google.com/p/prank-msa/)

To run prank from the command line, we only need to specify the name of the input file using the -d= commandline option

`$ prank -d=./sixSeqsLouisianaGastroUnaligned.fasta`

This resulted in [this alignment](./sequences/sixSeqsLouisianaGastro.prank.fasta)
