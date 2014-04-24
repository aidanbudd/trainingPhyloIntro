##Phylogeny Terminology and Concepts

###Notes

This exercise focuses on how we understand vocabulary and concepts associated with phylogenies and molecular evolution. By asking you to write down and discuss you understanding of several fundamental concepts and terms used in the field, the aim is to help highlight:

- the diversity amongst course participants, of our understanding of these different terms and concepts
- assumptions we make concerning these terms and concepts

It has been shown that considering an issue in several different ways e.g. (i) silently on your own (ii) in direct discussion with others or (iii) in a larger group discussion) tends to reinforce our ability to benefit from a given learning experience. Hence the structure of the exercise provided below.

###Exercise

A. Write down definitions/descriptions of the terms given in the list below (1-3).

Do this silently, on your own, and please actually write it down (on paper, or in a document on your computer) - formulating your ideas into words like this helps highlight aspects of the topic where your ideas are less clear (i.e. in this case, the parts of the definitions you find hardest to write are those which you feel less confident about)

It might help to begin by looking at the [Wikipedia page for phylogenetic trees](http://en.wikipedia.org/wiki/Phylogenetic_tree). If you do begin by consulting this page, please close the page when you write your own definitions/explanations of these terms, so that you don't find yourself just repeating what's already in the Wikipedia page.

Here are the terms:

1. phylogenetic tree
1. branch (of a phylogenetic tree)
1. root (of a rooted phylogenetic tree)

B. Once you've finished, compare your definitions with those of your neighbours.

Make notes on how your definitions differ, and write together a definition that agrees with both your ideas of the meaning of these terms.

C. We'll compare the definitions you have written together with [definitions we prepared before coming to the class](#suggested-definitions) - we'll discuss together any ways in which these pre-prepared definitions differ with the ones you have come up with.

D. (If you quickly finish part A. of the exercise) Repeat the above steps, this time selecting two or more terms from the list below.

4. node (of a phylogenetic tree)
4. polytomy
4. sister group
4. subtree
4. taxonomic unit

If you're interested, you could consult these [definitions/explanations Alexis and I have written for these terms](./documents/phyloTerminologyTakenFromWileyDictionary.pdf).

###<a name="SuggestedPhylogenyDefinitions"></a>Suggested Definitions

**phylogenetic tree**: A description of a path of transmission of genetic information between a set of taxo.  
**branch** (of a phylogenetic tree): Lineages of taxonomic units that link nodes within a phylogenetic tree.  
**root** (of a rooted phylogenetic tree): In a rooted tree, the node that represents the most recent common ancestor taxon of all other taxa in the tree.  


##Visualising Trees with NJplot

###Learning Objectives

After completing this section, you will hopefully be able to use NJplot to change the way a phylogenetic tree is visualised/drawn by the software by changing the root and rotating subtrees around internal branches to reach a specified/desired representation of a tree.

###Notes

Many applications of phylogenies involve using them to check whether a given set of taxa/organisms/OTUs are related to each other in a particular way i.e. whether the topology of the estimated phylogeny supports a particular set of relationships between OTUs. As a tree with a given topology can be drawn/represented/visualised in many different ways, it can sometimes be tricky to tell whether a given representation of a phylogenetic tree indeed contains the relationship of interest. Thus, working with and changing between different representations of a tree is a useful skill when interpreting the results of phylogenetic analyses.

NJplot does not have many features and options, however it carries out the simple tasks of re-rooting and rotating branches - very useful when attempting to determine whether a given set of relationships exists in a tree, or when comparing to tree topologies - very quickly, which is often all you need when taking a first look at a phylogeny.

This page describes how to carry out these kinds of manipulations using NJplot - we will also demo them for you.

###Exercise

Load the following NEWICK/PHYLIP format [unscaled phylogenetic file](./trees/eightTaxaUnscaledNjplotExercise.ph) into NJplot and use the software to try and reproduce as closely as possible the following image:

![](./images/eightTaxaNjplotExercise.gif "Eight OTU unscaled tree shown in NJplot")

If the previous exercise was easy, try the same thing with the following [tree file](./trees/twentyUnscaledTaxaNjplotExercise.ph) and image:

![](./images/twentyTaxaNjplotExercise.gif "Twenty OTU unscaled tree shown in NJplot")


## Phylogeny from initial sequences to answering a question

### Easy demonstration: from substantive question to an answer using North African dog rabies viruses

Sequences are taken from [this paper](http://www.ncbi.nlm.nih.gov/pubmed/21060816) (PubMed ID:21060816), which analyses the possible influence of human activity on spread of rabies virus amongst endemic dog populations in North Africa.

#### 1. Pose a substantive question

[**Substantive**](http://www.oxforddictionaries.com/definition/english/substantive) means important, meaningful, considerable (in terms of numbers). Used in our context here, it simply means "a question which there is significant interest or utility in finding an answer to it".

More pragmatically, as scientists who need to publish to be able to continue to work as scientists, a **substantive question** could be considered one whose answer could be published (or would at least increase the publishability/impact of an article).

For pragmatic scientists of this kind, it can be helpful to pose substantive questions where the estimation of a value of a parameter (that is part of a model of your system of interest) can help inform the answer (i.e. change our estimation of the probability that certain answers to the question more or less likely to be true, given the data and the model). This can be helpful, as it suggests an obvious way to begin addressing the substantive (i.e. hopefully publishable) question i.e. by collecting data to obtain an estimate of the parameter(s) of interest.

In the case of this analysis of the epidemiology of rabies virus in North Africa, there are many different substantive questions one could formulate related to this topic e.g.:

1. "Can we identify any public health interventions that could reduce the financial costs of rabies virus infection in North Africa?"
1. "Can we identify environmental or other factors that effect the dynamics of rabies virus infection in North Africa?"
1. "Does human activity influence the dynamics of rabies virus infection in North Africa?"
1. "Are rabies virus samples taken from North Africa more or less likely to be closely-related to each other if sampling locations are separated by a political boundary?"
1. "What is the topology of a phylogenetic tree of North African rabies viruses?"

Clearly the first three questions are substantive; we would of course be very interested, and certainly able to publish, any information that helped inform the answers to these questions. This would have the potential to decrease suffering, and the financial cost, of such infections, so is of interest from medical, welfare, and economic points of view.

The fourth question is less strongly linked such "interesting" issues; however, it is useful for us, as phylogeneticists, as it is a question that can help address the other, clearly substantive, questions described before it **and** for which it suggests a model (a molecular phylogenetic one), parameter (the topology of a rooted phylogenetic tree), and dataset (a multiple sequence alignment of North African rabies virus samples) for which an estimate of this parameter would make some answers more or less likely.

Understanding and recognising the link between questions of these kinds can help the scientist doing the analysis by helping them focus on collecting an appropriate and useful dataset (i.e. one from which a parameter of interest can be estimated from); the more specific this question, the easier it is to decide which data to include/collect, and which to leave out (we can very rarely collect all possible data that could be relevant for our analysis, and it can be very useful to have criteria to help us decide what to leave in, what to leave out), and for communicating about their work to others (it's much easier to discuss and help someone with an analysis when you understand what the important questions are that it tries to address).

After all of that discussion... for this demonstration, we're going to assume we have come up with the following substantive question:

**What is the topology of a phylogenetic tree of rabies viruses from North Africa with viruses sampled from several different North African countries?**

#### 2. Build a model involving parameters that, if known, could answer the question

In the context of this course, this will be a **probabilistic model of molecular evolution**, including (for example, as taken from some of Olivier Gascuel's slides):

- a tree topology (to be estimated)
- branch lengths (to be estimated)
- a substitution model (to be (partly) estimated)
- a distribution of site rates (to be estimated)

In the case of the North African rabies virus analysis, the parameter whose value will allow us to address the substantive question is the tree topology.

#### 3. Collect observations informative about the model parameter(s)

In the context of this course, this will almost always be a multiple sequence alignment.

In the case of the North African rabies virus analysis, we will use a set of [nucleotide sequences of North African rabies virus phosphoprotein CDSs](./sequences/phosphoproteinCDSsLabelsEd_alphanumericUnderscoreOnly.fasta), whose sequence identifiers have been modified so that its easy to tell which country they were sampled from (if the ID contains ALG it's Algeria, TUN, it's Tunisia, MAR it's Morocco) and to be compatible with the various software used in the analysis (in particular to contain only alphanumeric characters or underscores i.e. '_')

We align the sequences using either [webPRANK webserver](http://www.ebi.ac.uk/goldman-srv/webprank/) or the [MUSCLE webserver](https://www.ebi.ac.uk/Tools/msa/muscle/), both hosted by the EMBL-EBI, giving the following alignments:

- [webPRANK](./sequences/phosphoproteinCDSsLabelsEd_alphanumericUnderscoreOnly.webprank)  
- [MUSCLE](./sequences/phosphoproteinCDSsLabelsEd_alphanumericUnderscoreOnly.muscle)

#### 4. Find best estimate(s) of the parameter(s), conditioned on these observations

The parameter of interest is the topology of the phylogenetic tree of these sequences.

We will only carry out a quick analysis here, using maximum likelihood to estimate topology and branch lengths using PhyML, and jModelTest to estimate an appropriate substitution model to use with PhyML.

##### Estimating best substitution model

Some simple instructions on using jModelTest can be found [here](./usingJModelTest.html).

We will run the analysis using the [webPRANK](./sequences/phosphoproteinCDSsLabelsEd_alphanumericUnderscoreOnly.webprank) alignment of the sequences, calculating likelihood scores using the following parameters:

- Number of substitution schemes->3
- Base frequencies->check
- Rate variation->uncheck both +I and +G
- Base tree for likelihood calculations->Fixed BIONJ-JC

and comparing models using the AIC, to give [this output file](./outputFiles/phosphoproteinCDSsLabelsEd_alphanumericUnderscoreOnly.webprank.jmodeltest.html)

which chooses **GTR** as the best substitution model.

##### Estimating the best phylogeny topology and branch length parameters

We'll use the [PhyML webserver](http://www.atgc-montpellier.fr/phyml/) to get an ML estimate of phylogeny topology and branch lengths.

We use this [PHYLIP format alignment file](./outputFiles/phosphoproteincdsslabelsed_alphanumericunderscoreonly_webprank_phylip_phyml/phosphoproteincdsslabelsed_alphanumericunderscoreonly_webprank_phylip_phyml_tree.txt) as input for PhyML. We got this from the previous FASTA format alignment file using ClustalX.

We'll follow [this very basic description of using PhyML webserver](./usingPhyML.html) to quickly estimate a phylogeny using the substitution model selected by jModelTest.

This gives us the following [phylogenetic tree](./outputFiles/phosphoproteincdsslabelsed_alphanumericunderscoreonly_webprank_phylip_phyml/phosphoproteincdsslabelsed_alphanumericunderscoreonly_webprank_phylip_phyml_tree.txt)

#### 5. Estimate sampling/random error associated with parameter estimate

In this analysis of North African rabies virus samples, to address our substantive question of interest, we are most interested in estimating the topology parameter of the phylogenetic tree for these samples.

Thus, we're in particular interested in estimating the sampling error associated with this parameter estimate.

As it happens, these errors have already been estimated by PhyML (the aLRT SH-like branch support values), and are described in the above tree file.

#### 6. Answer your question using these parameter estimates

Finally we examine the resulting tree file to see which of the possible answers to our substantive question it provides most support for.

We can do that using, for example:  

- phylowidget  
- NJplot
- Dendroscope
- FigTree

### Easy exercise: from substantive question to an answer using "Louisiana Gastroenterologist" case as an example

You can read [here](#LouisianaGastroenterologistDatsetDescription) a quick introduction to this dataset.

#### 1. Pose a substantive question

Write a question that relates the issue of the guilt or innocence of the accused in this trial to a phylogenetic analysis of relevant HIV sequences, that clearly highlights the parameters of interest for addressing this question.

#### 2. Build a model involving parameters that, if known, could answer the question

This will be a phylogenetic probabilistic model of the evolution of a set of HIV sequences.

#### 3. Collect observations informative about the model parameter(s)

Align this set of [30 relevant HIV env/gp120 nucleotide sequences](./sequences/thirtySeqsLouisianaGastroUnaligned.fasta). The meaning of the sequence identifiers is described [here in the section on "Sequence/Data"](#LouisianaGastroenterologistDatsetDescription)

Use either a local command-line tool (such as MUSCLE or PRANK) to align the sequences, or a web server such as [webPRANK](./sequences/phosphoproteinCDSsLabelsEd_alphanumericUnderscoreOnly.webprank) or [MUSCLE](./sequences/phosphoproteinCDSsLabelsEd_alphanumericUnderscoreOnly.muscle).

I'LL INCLUDE ALIGNMENTS OF THESE SEQUENCES USING BOTH METHODS HERE FOR REFERENCE/IN CASE THEY HAVE PROBLEMS RUNNING THE SOFTWARE

IF I HAVE TIME I'LL LINK TO A SHORT PAGE HERE DESCRIBING HOW TO RUN A QUICK MSA LOCALLY AND VIA A WEBSERVER OF EITHER NUCLEOTIDE OR PROTEIN SEQUENCES

Clearly, if/when doing an analysis of this kind of your own, collecting an appropriate set of observations is likely to be much more effort that just clicking a link in a webpage and running  automatic alignment software over them


#### 4. Find best estimate(s) of the parameter(s), conditioned on these observations AND 5. Estimate sampling/random error associated with parameter estimate

Use jModelTest to choose a substitution model for your aligned sequences.

Use PhyML to estimate the topology, branch lengths (i.e. best estimates of relevant parameters), and branch support values (i.e. random error associated with topology parameter estimate), of a phylogenetic tree for these sequences.


#### 6. Answer your question using these parameter estimates

Visulaise the resulting tree using a tree viewer and assess the extent to which the results change your opinion about the guilt or innocence of the accused.

### Intermediate Demonstration

Here we will work again with the North African rabies dataset, and will run again through the process of going from a question to an answer. The earlier demonstration of this kind was done to emphasise the conceptual steps we take while doing such an analysis; here, however, we'll focus more on the practicalities of how to carry out the different stages of the analysis.

To remind you, the relevant analysis is described in [this
paper](http://www.ncbi.nlm.nih.gov/pubmed/21060816) (PubMed ID:
21060816), which analyses the possible influence of human activity on spread of rabies virus amongst endemic dog populations in North Africa.

#### Write down one or more substantive questions we want to address with the analysis

Always need to begin with this! It's a big help in guiding decision-making while carrying out the analysis

#### Collect an appropriate set of sequences

There are many different places we could get them from:

- a collaborator
- a sequencing machine
- public databases that provide sequence data

We'll focus our example analysis on phosphoprotein complete CDS nucleic acid sequences

**Looking for sequences first described in a particular publication?**

Query PubMed with the PubMed ID, and link out to Nucleotide and/or
Protein sequences, and export in an appropriate format (e.g. FASTA)

- Search the Internet for PubMed
- Copy and Paste the PubMed ID into the search box
- Follow the appropriate link in the "Related Information" section on the right-side menu
- Use the "Advanced" search options and the "Query Builder" to filter out unwanted sequences
 - [YouTube video](http://www.youtube.com/watch?v=dncRQ1cobdc) describing use of these tools
 - A [tutorial](http://www.lib.berkeley.edu/BIOS/pubquick.html) on using PubMed searches
- Select appropriate sequence records, and follow the Send to link to download to a file in the appropriate format

**Using sequence similarity searching to identify similar sequences**

-  Take one of the query sequences from the file below
-  [BLAST](http://blast.ncbi.nlm.nih.gov/Blast.cgi) it at the NCBI choosing the appropriate program; perhaps filter e.g. using "Africa"

**Pre-calculated alignments**

For rabies phosphoprotein CDSs, there's no resource I can find that provides pre-aligned sets of sequences. Thus, we'll try instead looking for alignments of vertebrate COX2 protein sequences.

We can try this by searching the Internet directly with a generic search engine - trying this in December 2013 I hit these pages:

-   [macromoleculeinsights](http://macromoleculeinsights.com/cox.php)
-   [phosphosite](http://www.phosphosite.org/showMsaAction.do;jsessionid=796A76399AC4C7519AF870A02FACD3AD?protGroup=312573&showAllSites=true)
-   [PFAM](http://pfam.sanger.ac.uk/family/PF00116)

I can try linking out from the [UniProt
record](http://www.uniprot.org/uniprot/P35354) for the protein, in the "phylogenomic databases" and "Family and domain databases" sections.

Or I can go to sites I know have such alignments available such as:

- [HOGENOM](http://pbil.univ-lyon1.fr/databases/hogenom/home.php)
- [TreeFam](http://www.treefam.org/)
- [Ensembl](http://www.ensembl.org/index.html)

Note that there are two, completely different and almost certainly
unrelated proteins called COX2 in humans (PGH2\_HUMAN and COX2\_HUMAN)!


#### Edit sequence identifiers to be unique, compatible with analysis tools, and meaningful (in the context of allowing us to easily answer our question(s) of interest when examining resulting phylogneetic trees and other results)

Here I've selected a set of sequences using the kinds of methods described above, in FASTA format, but [haven't changed the sequence identifiers at all.](http://www.embl.de/%7Eseqanal/courses/commonCourseContent/dataFiles/phosphoproteinCDSsNoLabelEd.txt)

With these identifiers, there is plenty of phylogenetic software that will not accept them as input, even if they accept FASTA format alignment files.

Common problems could be that the identifiers:

- are not unique in the first 10 characters of the string
- contain characters other than A-Z, a-z, 0-9, and _
- are too long

For example, the [RAxML BlackBox web server](http://embnet.vital-it.ch/raxml-bb/index.php) doesn't accept these sequences as input.

However, after I edit the file, [changing it to this](http://www.embl.de/%7Eseqanal/courses/commonCourseContent/dataFiles/phosphoproteinCDSsLabelsEd.txt), so that the first 10 characters are unique (and at the same time making it easy to spot their country of sampling, making the final data visualisation/question answering part of the analysis easier), they are accepted 

#### Align sequences

Aligned FASTA sequences - google "MUSCLE EBI" or "WEBPRANK" to get links to MUSCLE and PRANK webservers: 

-   [MUSCLE aligned](http://www.embl.de/%7Eseqanal/courses/commonCourseContent/dataFiles/phosphoproteinCDSsLabelsEd.muscle)
-   [PRANK aligned](http://www.embl.de/%7Eseqanal/courses/commonCourseContent/dataFiles/phosphoproteinCDSsLabelsEd.prank)

There are many different tools available, and different tools are better suited for different "kinds" of sequence sets (length, whether DNA, RNA, or protein, number of sequences, how similar the sequences are to each other).

One option (fairly good for fairly divergent protein sequences) would be the [MUSCLE webserver](http://www.ebi.ac.uk/Tools/msa/muscle/) at the EMBL-EBI.

Here they are as aligned by [MUSCLE](http://www.embl.de/%7Eseqanal/courses/commonCourseContent/dataFiles/phosphoproteinCDSsLabelsEd.muscle)

Here is an example of the [same set of sequences
aligned](http://www.embl.de/%7Eseqanal/courses/commonCourseContent/sequences/relativelyDivergentRabiesCDSsAlignedWithOthersMUSCLEEBI.fasta)
together with some [more divergent
ones](http://www.embl.de/%7Eseqanal/courses/commonCourseContent/sequences/relativelyDivergentRabiesCDSs.fasta).

#### Model Selection

For this we use jModelTest (for nucleotide sequences) or ProtTest (for protein sequences) as appropriate.

Modeltest results from PRANK alignment - use JModelTest on local
machines:

-   [Console PDF](http://www.embl.de/%7Eseqanal/courses/commonCourseContent/dataFiles/phosphoproteinCDSsLabelsEd.modeltest.pdf)
-   [AIC results TIFF](http://www.embl.de/%7Eseqanal/courses/commonCourseContent/dataFiles/phosphoproteinCDSsLabelsEd.modeltest.AICresults.tiff)
-   [BIC results TIFF](http://www.embl.de/%7Eseqanal/courses/commonCourseContent/dataFiles/phosphoproteinCDSsLabelsEd.modeltest.BICresults.tiff)

#### Phylogeny estimation

Tools typically used to estimate phylogenies for publication are mostly command-line based, and we don't have time to teach how to use these today. Instead we'll try using some webservers that have wrapped some of these programs up in a relatively easy-to-use interface that offer some, but not all, of the functionality of the tools.

-   [Phylemon](http://phylemon.bioinfo.cipf.es/)
-   [Phylogeny.fr](http://www.phylogeny.fr/)

Phylogeny.fr result (HKY + Gamma) - use phylogeny.fr a la carte mode to run analysis, and view NEWICK tree using a tree viewer locally on your machines

[NEWICK tree from Phylogeny.fr](http://www.embl.de/%7Eseqanal/courses/commonCourseContent/dataFiles/phosphoproteinCDSsLabelsEd.HKYgamma.phylogeny.fr.ph)

#### Algorithm Diagnosis

Try the analysis using several different substitution models, different starting trees

#### Parameter estimation

Look at the tree and decide on how it informs the answer to your question of interest


### Intermediate Exercise

Try a similar analysis as used for the phosphoprotein complete CDS nucleic acid sequences shown above, using the sequences for glycoprotein partial CDS and intergenic spacer given below

- [Sequence labels unedited](http://www.embl.de/~seqanal/courses/commonCourseContent/dataFiles/glycoproteinPartialAndIntergenicSpacerNoLabelEd.txt)
- [Sequence labels edited to easily identify country of origin](http://www.embl.de/~seqanal/courses/commonCourseContent/dataFiles/glycoproteinPartialAndIntergenicSpacerLabelsEd.txt)

1. Write down one or more substantive questions we want to address with the analysis

2. Collect an appropriate set of sequences

3. Edit sequence identifiers to be unique, compatible with analysis tools, and meaningful (in the context of allowing us to easily answer our question(s) of interest when examining resulting phylogneetic trees and other results)

4. Align sequences

5. Model Selection

6. Phylogeny estimation

7. Algorithm Diagnosis

8. Parameter estimation

### Advanced Exercise (where you decide yourself which tools to run etc.): the case of the "Louisiana gastroenterologist"

[Metzker et al. PNAS 2002](http://www.ncbi.nlm.nih.gov/pubmed/12388776) describe a phylogenetic analysis of HIV env/gp120 sequences that was used as evidence in the trial of a Louisiana gastroenterologist accused of deliberately infecting someone (the "victim") with HIV-infected blood from one of the gastroenterologist's patients.

In this exercise, you are asked to try this analysis (or at least a similar one) to that carried out by Metzker et al., with the aim of deciding how well the data supports the hypothesis that the victim (whose sequence identifiers all begin with a "V") was directly infected by blood taken from the patient (whose sequence identifiers all begin with a "P").
 
Carry out the analysis beginning with [this file of 30 unaligned env/gp120 sequences](./sequences/thirtySeqsLouisianaGastroUnaligned.fasta).

This contains:

1. selected sequences (we removed some of the sequences to reduce the time needed for several of the analysis steps) taken from the [complete set analysed by Metzker et al.](./sequences/pmid_12388776_MetzkerEtAl2002_only_env_gp120s_cloneNamesOnly.fasta)
1. [two additional, more divergent "reference" sequences](./sequences/twoReferenceHivEnvGp120Seqs_.fa)

To place the analysis in context, consider that the aim of the
prosecution questioning of the expert witnesses in this case was to
establish whether the virus samples in the victim and the patient were "closely related". [This article](http://www.cmj.hr/2005/46/4/16100754.htm), from the [Croatian Medical Journal](http://www.cmj.hr/), (Budowle and Harmon, 2005; 46:514-21) gives some background on the legal context of this questioning. The jury was (at least as far as I understand it) charged with addressing the question whether it was beyond reasonable doubt that the victim was infected as a result of the actions of the gastroenterologist; the results of the phylogenetic analysis are only a small part of the evidence they considered when trying to answer this question.

You might also be interested to read the following documents, which are the decisions of the first and second appeals to the guilty verdict; they contain some comments/quotes from some of the expert phylogenetic witnesses:

- [1st appeal](http://www.denverda.org/DNA_Documents/schmidt1997.PDF)
- [2nd appeal](http://www.denverda.org/DNA_Documents/schmidt2000.PDF)

Ideally, just use your previous experience to decide how to do this - however, if you need help/suggestions, you could look at the ["Phylogeny analysis workflow" section of this
presentation](http://www.embl.de/%7Eseqanal/courses/watcCompMolEvolPhyloIntroBuddFridayApr2011/phyloPres_watcCompMolEvolPhyloIntroBuddFridayApr2011.pdf)
for ideas, and/or look at [this link which makes some more explicit
suggestions on what you could try in this particular
case](http://www.embl.de/%7Eseqanal/courses/commonCourseContent/phylogenyAnswers.html#Louisiana_gastroenterologist)\

While doing the analysis, you may find it useful to consider the
following issues/questions:

-   did you remove any sequences and/or columns from the alignment    before running the analysis? How/why did you choose these? What    influence would you expect this choice to have on the result of your analysis?
-   are there any unusual characters in the data set? how could/did you deal with these? What effects would you expect these different approaches to addressing this problem have on the result?
-   which substitution model(s) do you think are the most appropriate to use when analysing this data set?
-   to what extent do different estimates of the phylogeny usin different methods agree with each other i.e. how similar are the trees you get from different analyses?
-   what do you feel is the right way of thinking about the relationship between branch support (e.g. posterior probabilities) and whether the data supports particular conclusions "beyond reasonable doubt"? For example, bipartition/clade/internal branch posterior probabilities are estimates of the probability that the branch is correct **given** the data and the model (and there may be issues with both of these things that we're conditioning the analysis on). To think about it differently, what do you feel is the relationship between "reality" (i.e. the true description of the processes of evolution that yielded the sequences we use in the analysis) and "branch support"?

For the sake of completeness, here are files containing

1. [the full set of env/gp120 nucleotide sequences used in the study](./sequences/pmid_12388776_MetzkerEtAl2002_only_env_gp120s_cloneNamesOnly.fasta)
2. [the full set of RT-pol sequences described in the study](./sequences/pmid_12388776_MetzkerEtAl2002_only_RT_pol_cloneNamesOnly.fasta)
3. [the trimmed-down set of these sequences described above](./pmid_12388776_MetzkerEtAl2002_only_env_gp120s_cloneNamesOnly_trimmedForSize.fa)

Here is a short desription of how I might go about doing the analysis described above:

aligning sequences:  
- [webPRANK](http://www.ebi.ac.uk/goldman-srv/webprank/)  
- [MUSCLE](http://www.ebi.ac.uk/Tools/msa/muscle/)  
- [MAFFT](http://www.ebi.ac.uk/Tools/msa/mafft/)  

removing sequences/columns from the analysis:  
- [JalView](http://www.jalview.org/)  

substitution model testing:  
- [PAML](http://abacus.gene.ucl.ac.uk/software/paml.html) (you could also use modeltest, however)  

visualising trees:  
- [NJplot](http://pbil.univ-lyon1.fr/software/njplot.html)  
- [Dendroscope](http://ab.inf.uni-tuebingen.de/software/dendroscope/)  
- [FigTree](http://tree.bio.ed.ac.uk/software/figtree/)  
- [PhyloWidget](http://www.phylowidget.org/)  

Bayesian phylogeny estimation:  
- [MrBayes](http://mrbayes.csit.fsu.edu/)  

examining features of MrBayes runs:  
- [Tracer](http://tree.bio.ed.ac.uk/software/tracer/)  

maximum likelihood phylogeny estimation:  
- [RAxML](http://icwww.epfl.ch/%7Estamatak/index-Dateien/Page443.htm) or [PhyML](http://www.atgc-montpellier.fr/phyml/)  

checking for agreement between estimated trees:  
- [CONSENSE](http://evolution.genetics.washington.edu/phylip/doc/consense.html) (part of the PHYLIP package), or [SplitsTrees](http://www.splitstree.org/), or [clann](http://bioinf.may.ie/software/clann/)

One way of linking these together would be to:

1 Align the initial set of **nucleotide** (ignoring the fact that they're coding, or at least contain some coding regions) sequences using [webPRANK](http://www.ebi.ac.uk/goldman-srv/webprank/), asking webPRANK to estimate its own tree  

2 for the sake of keeping data processing/formatting issues at a    minimum I'd for now focus on nucleotide models rather than codon or protein models - the fact that they're not perhaps only coding sequences, and might contain some stop codons make it tricky to quickly go with these alternatives

3 remove some sequences from the analysis using JalView

4 realign the sequences automatically using webPRANK

5 estimate the phylogeny using one of the following software, beginning with a GTR + gamma substitution model (which is usually/often a good choice)
- RAxML
- PhyML
- MrBayes

6 re-align the sequences using webPRANK, providing it with the estimated tree to guide the analysis

7 estimate, from the new alignment (perhaps removing more sequences, removing some columns from the analysis) using several different tools, estimating also "support values" i.e. non-parametric bootstraps, aLRTs, posterior probabilities, running each tool more than once with different runs using different start trees/random seeds - again, tools you could use might be:
- RAxML
- PhyML
- MrBayes

8 using the tree, if the reported tree topologies are very similar (I could use CONSENSE in the PHYLIP package to build consensus trees to check how well they agree), I could use jModeltest or PAML or modeltest to test alternative substitution models (e.g. whether HKY plus gamma is a better choice of model for the analysis than GTR plus gamma). jModeltest is easier to use. PAML gives you more control over which tree is used as the context in which to compare the models, and which order and which models to include in the testing.

9 If I ended up preferring a different model, I'd run the analyses above again i.e. estimate the tree again using different methods, different starting trees, different parameters, checking for "good" MCMC behaviour, etc. I'd also use SOWH to test explicit hypotheses of interest concerning branching patterns/bipartitions associated with the question of interest

Visualise you alignment using [JalView](http://www.jalview.org/)

Do you expect this is likely to give a precise estimate of the topology parameter?

## <a name="LouisianaGastroenterologistDatsetDescription"></a>Example Dataset: the case of the "Louisiana Gastroenterologist"

### Introduction to the case

[Metzker et al. PNAS 2002](http://www.ncbi.nlm.nih.gov/pubmed/12388776) describe a phylogenetic analysis of HIV env/gp120 sequences that was used as evidence in the trial of a Louisiana gastroenterologist accused of deliberately infecting someone (the "victim") with HIV-infected blood from one of the gastroenterologist's patients.

To place the analysis in context, consider that the aim of the
prosecution questioning of the expert witnesses in this case was to establish whether the virus samples in the victim and the patient were "closely related". [This article](http://www.cmj.hr/2005/46/4/16100754.htm), from the [Croatian Medical Journal](http://www.cmj.hr/), (Budowle and Harmon, 2005; 46:514-21) gives some background on the legal context of this questioning. The jury was (at least as far as I understand it) charged with addressing the question whether it was beyond reasonable doubt that the victim was infected as a result of the actions of the gastroenterologist; the results of the phylogenetic analysis are only a small part of the evidence they considered when trying to answer this question.

You might also be interested to read the following documents, which are the decisions of the first and second appeals to the guilty verdict; they contain some comments/quotes from some of the expert phylogenetic witnesses:

- [1st appeal](http://www.denverda.org/DNA_Documents/schmidt1997.PDF)
- [2nd appeal](http://www.denverda.org/DNA_Documents/schmidt2000.PDF)

### Sequences/data

In the exercises related to this dataset, I typically ask you to try an analysis (or at least a similar one) to that carried out by Metzker et al., with the aim of deciding how well the data supports the hypothesis that the victim (whose sequence identifiers all begin with a "V") was directly infected by blood taken from the patient (whose sequence identifiers all begin with a "P").

Note that sequence identifiers begin either with:

- "LA" - this indicates that it was isolated from a non-victim non-patient individual who was located in Louisiana
- "P" - this indicates it was isolated from the patient; note that several samples were taken from the patient at several different time points, and that the sequences of these samples are non-identical, hence there being several included in the analysis
- "V" - this indicates it was isolated from the victim; note that several samples were taken from the victim at several different time points, and that the sequences of these samples are non-identical, hence there being several included in the analysis
- some other letter/number - these are the reference sequences sampled from outside Louisiana

The following files may be useful starting points for your analysis:   

- [30 unaligned env/gp120 nucleotide sequences](./sequences/thirtySeqsLouisianaGastroUnaligned.fasta)
- the 30 nucleotide sequences in the file above were selected from [the complete set of 132 env/gp120 sequences analysed by Metzker et al.](./sequences/pmid_12388776_MetzkerEtAl2002_only_env_gp120s_cloneNamesOnly.fasta). A reduced set of sequences is provided to reduce the time needed for several of the analysis steps)
- the 30 sequences above also includes [two additional, more divergent "reference" sequences](./sequences/twoReferenceHivEnvGp120Seqs_.fa) to serve as a comparison to the sequences described in Metzker et al.'s analysis

### Why use this dataset as an example? 

It has been shown that we learn more effectively when working with problems that we find interesting or relevant; for example, a course that made use of the same dataset you were doing your own research on would be great, as obviously you'd be interested in the data and the results, and what you would be learning would clearly be relevant to you.

However, in a class where everyone works on different data, and different kinds of research questions (which is usually the case), there will not be a dataset that is directly relevant to the work of all trainees. Thus, the challenge is to find a dataset which all/most/many trainees will find interesting, important, or relevant in a way that's not directly related to their specific work.

The "Lousisiana Gastroenterologist" datasets described here have been chosen as an example of a phylogenetic analysis where everyone can understand the importance of obtaining an as-accurate as-precise as possible estimation of parameters of the phylogenetic model; the data was presented as evidence in a murder trial, and thus had the opportunity to have a huge impact on the life of an individual; if presented in a case where capital punishment were a possible sentence, it would even be in a position to directly influence the life or death of the accused.

On top of that, there seems to be something ghastly fascinating in stories of betrayal, sex, and violence of this kind, and this seems to provide a good hook to keep our attention and interest when working with the data.


