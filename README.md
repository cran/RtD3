# Rt visualization in D3

[![Travis build status](https://travis-ci.com/epiforecasts/RtD3.svg?branch=master)](https://travis-ci.com/hamishgibbs/RtD3)
[![Codecov test coverage](https://codecov.io/gh/epiforecasts/RtD3/branch/master/graph/badge.svg)](https://codecov.io/gh/hamishgibbs/RtD3?branch=master)
[![Documentation](https://img.shields.io/badge/Package-documentation-lightgrey.svg?style=flat)](https://epiforecasts.io/RtD3/)
[![Zenodo](https://zenodo.org/badge/DOI/10.5281/zenodo.4011842.svg)](https://zenodo.org/record/4011842)


Create interactive visualisations of Rt estimates using D3.js ([Gibbs et al. (2020)](https://doi.org/10.5281/zenodo.4011842)). Developed primarily targeting Rt estimates generated by the EpiNow2 package, RtD3 aims to make simple, beautiful visualisations that help researchers explore their results and share them with others.`RtD3` provides an interface for the JavaScript library [rt_vis](https://github.com/hamishgibbs/rt_vis/).

## Installation

Install from CRAN with: 

```r
install.packages("RtD3")
```

Install the stable development version of the package using
[`{drat}`](https://epiforecasts.io/drat/):

``` r
install.packages("drat")
drat:::add("epiforecasts")
install.packages("RtD3")
```

Install the unstable development version of the package with:

``` r
remotes::install_github("epiforecasts/RtD3")
```

## Quickstart

Estimates are available from [epiforecasts](https://epiforecasts.io/covid/) [covid-rt-estimates](https://github.com/epiforecasts/covid-rt-estimates/) in the format expected by this package. Use the helper function `readInEpiNow2` to generate the summary widget with existing estimates.

``` r
rtData <- list("Cases" = readInEpiNow2(
    path = "https://raw.githubusercontent.com/epiforecasts/covid-rt-estimates/master/national/cases/summary",
    region_var = "country"))

summaryWidget(rtData = rtData)
```

Optionally, a map can be included using data from the `rnaturalearth` package.

``` r
geoData = rnaturalearth::ne_countries(returnclass = 'sf')

summaryWidget(geoData = geoData, rtData = rtData)
```

## Development

Comments and contributions to this package are welcome. To record a problem with the package, please [create an issue](https://github.com/epiforecasts/RtD3/issues/new/) on [Github](https://github.com/epiforecasts/RtD3/). 
