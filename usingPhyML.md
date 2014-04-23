# Using PhyML

An extremely quick introduction to PhyML, just so that we can use it in class exercises.

## Input files

Alignment files input to PhyML need to be in PHYLIP format. If you have them in another format that is recognised by ClustalX, then an easy way to get your alignment in the correct format is to load it into ClustalX and then save it in Phylip format from there.

There are also constraints on the kind of characters used in sequence identifiers; it is best (this is generally true for phylogenetic software) to restrict your identifiers to A-Z, a-z, 0-9, and _

There may also be constraints on the lenght of hte identifiers; in general, to increase compatibility between different tools, it's good to keep them limited to 10 characters, and if longer, to make sure the first 10 characters are a unique identifier.

This [set of nucleotide sequences of the phosphoprotein CDS from several North African rabies virus samples](./sequences/phosphoproteinCDSsLabelsEd_alphanumericUnderscoreOnly.webprank.phylip), can be used to test out the software.

## PhyML webserver

The south of France bioinformatics platform provides a [PhyML webserver](http://www.atgc-montpellier.fr/phyml/). The following insturctions are for using the server running a version 20120412 of PhyML (i.e. a version released in April 2012), on April 23rd 2014; note that the webserver may well have changed details of its interface when you try it out.

A simple, quick analysis can be run, on this test set of [nucleotide sequences of the phosphoprotein CDS from several North African rabies virus samples](./sequences/phosphoproteinCDSsLabelsEd_alphanumericUnderscoreOnly.webprank.phylip), using the following options:

Input Data:  
- Data type: "DNA""
- Sequence file: "interleaved"
- Number of data sets: "1"

Substitution Model:  
- Substitution model: "GTR"
- Equilibrium frequencies: "empirical"
- Transition / transversion ratio (DNA models): option not available under GTR model
- Proportion of invariable sites: "0.0"
- Number of substitution rate categories: "1"
- Gamma shape parameter: not relevant if using only 1 rate category

Tree Searching:  
- Starting tree(s): "BIONJ"
- Type of tree improvement: "NNI"
- Optimise topology: "No"
- Optimise branch lengths: "No"

Branch Support:  
- Fast likelihood-based method: "aLRT SH-like" AND "yes"
- Perform bootstrap: "no"

and give a name and an email address

A ziped result file, [such as this one](./outputFiles/phosphoproteincdsslabelsed_alphanumericunderscoreonly_webprank_phylip_phyml.zip), is emailed to you once the analysis is over.

One of the files in the directory, once you have unzipped it, contains the PhyML's [ML estimate of the phylogenetic tree](./outputFiles/phosphoproteincdsslabelsed_alphanumericunderscoreonly_webprank_phylip_phyml/phosphoproteincdsslabelsed_alphanumericunderscoreonly_webprank_phylip_phyml_tree.txt)