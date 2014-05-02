# Using jModelTest

These are written for use with jModelTest 2.1.4 running on a Mac

## Running a basic quick analysis

### Load alignment file

*File->Load DNA Alignment* and select alignment of interest

You can try [this example file](./sequences/phosphoproteinCDSsLabelsEd_alphanumericUnderscoreOnly.webprank).

### Compute likelihood scores for different models

*Analysis->Compute likelihood scores*

To run a very quick analysis, just choose

*Likelihood settings*

- Number of substitution schemes->3
- Base frequencies->check
- Rate variation->uncheck both +I and +G
- Base tree for likelihood calculations->Fixed BIONJ-JC

and then click "Compute likelihoods"

To include the GTR model in the scheme you need to run as above but using **Base frequencies->check**

### Calculate selection criteria

For now we'll just use AIC

*Analysis->Do AIC calculations...*

then click "Do AIC calculations"

### View results

*Results->Show results table*

Then choose the AIC tab.

The preferred models are those with the lower AICs; used very naievely, one would assume that the best model to take is the one with the lowest AIC.

### Saving the results

*Results->Build HTML log*

will write an HTML output file containing the results of the analysis