# Changing alignment formats

There are many different formats for storing alignments in files.

Formats that can be read by many (but not all) phylogenetic software include:

- [fasta](http://en.wikipedia.org/wiki/FASTA_format)
- [nexus](http://en.wikipedia.org/wiki/Nexus_file) (which can be used to store much more than just alignment data)
- [phylip](http://www.bioperl.org/wiki/PHYLIP_multiple_alignment_format) (both interleaved and sequential)

To convert from fasta to phylip format you could use:

- [Phylogeny.fr data converter](http://www.phylogeny.fr/version2_cgi/data_converter.cgi) (works going from fast to phylip interleaved for use by PhyML)
- [ClustalX](http://www.clustal.org/download/clustalx_help.html)