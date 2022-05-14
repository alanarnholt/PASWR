PASWR
========

### Version 1.3

[![Travis-CI Build Status](https://travis-ci.org/alanarnholt/PASWR.svg?branch=master)](https://travis-ci.org/alanarnholt/PASWR)

[![Downloads from the RStudio CRAN mirror](https://cranlogs.r-pkg.org/badges/PASWR)](https://cran.r-project.org/package=PASWR)

[![CRAN
version](https://www.r-pkg.org/badges/version/PASWR)](https://cran.r-project.org/package=PASWR)
![](https://cranlogs.r-pkg.org/badges/grand-total/PASWR)

### Alan T. Arnholt

**PASWR**: Functions and data sets for the text *Probability and Statistics with R*

Please report any **bugs** or **suggestions** at:
<https://github.com/alanarnholt/PASWR/issues>.

### Installation

The package is available for download from
[CRAN](https://CRAN.R-project.org/package=PASWR).

You may download the most recent version using the [devtools](https://github.com/r-lib/devtools) function `install_github()` to install **PASWR** in R.

However, you need to make sure you're set up to develop packages. This is platform specific:

* On Windows, download and install [Rtools](https://CRAN.R-project.org/bin/windows/Rtools/).
* On the Mac, make sure you have [Xcode](https://developer.apple.com/xcode/) installed.
* On Linux, make sure you have the R-dev packages installed.

You can check everything is installed correctly with the `has_devel()` function from the **devtools** package. Type the following at 
the **R** prompt:


```s
install.packages("devtools", dependencies = TRUE)    
devtools::has_devel()
```

If everything is installed correctly, the function will print some output and then return **TRUE**.

To install the **PASWR** package, type the following at the **R** prompt:


```s
devtools::install_github('alanarnholt/PASWR')
```
    
It is possible to install **PASWR** with [GIT](https://git-scm.com/) and the **R CMD build** assuming you have GIT installed and the appropriate tools to build **R** from source.

```bash
git clone https://github.com/alanarnholt/PASWR.git
R CMD build PASWR
R CMD INSTALL PASWR_*.tar.gz
```

