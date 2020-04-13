# BridgeDbR package

R package for BridgeDb, a tool for identifier mapping.

Learn about BridgeDb at http://www.bridgedb.org/ and read about it in this paper:

Van Iersel, M.;  Pico, A.;  Kelder, T.;  Gao, J.;  Ho, I.;   Hanspers, K.;  Conklin, B.;  Evelo, C. BMC Bioinformatics 2010, 11, 5, https://doi.org/10.1186/1471-2105-11-5

The DOI of this package is https://doi.org/10.18129/B9.bioc.BridgeDbR

The source code of this package is available from https://github.com/bridgedb/BridgeDbR

License: AGPL-3

Available from Bioconductor
===========================
To install this package, start R and enter:

```
install.packages("BiocManager")
BiocManager::install("BridgeDbR")
```

To view documentation for the version of this package installed in your system, start R and enter:

```
browseVignettes("BridgeDbR")
```

http://www.bioconductor.org/packages/release/bioc/html/BridgeDbR.html
 
Compiling and Installing
========================

To compile and install the lastest version from GitHub, or to test your patches, use the following
commands:

    R CMD build BridgeDbR
    R CMD check BridgeDbR_x.y.z.tar.gz
    R CMD INSTALL BridgeDbR_x.y.z.tar.gz

To create the vignette:

    rm -f BridgeDbR/inst/doc/tutorial.pdf; R CMD build BridgeDbR; tar xvf BridgeDbR_0.99.1.tar.gz BridgeDbR/inst/doc/tutorial.pdf

To install the packages from within R with the devtools package:

    > install.packages("rJava") # if not present already
    > install.packages("curl") # if not present already
    > install.packages("devtools") # if not present already
    > library(devtools)
    > install_github("bridgedb/BridgeDbR")

Dependencies
============

This package requires curl and RJava, which can be installed with:

    install.packages(pkgs=c("rJava", "curl"))

