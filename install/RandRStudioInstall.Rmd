If your version of R is older than 3.3.0, please install the latest version, though you may be fine with older versions.

To install R, see:

  * MacOS: install the R-3.5.1.pkg from https://cran.rstudio.com/bin/macosx/ if you have OS X 10.11 (El Capitan) or higher (or the R-3.3.3.pkg package if you have OS X 10.9 or 10.10)
  * Windows: https://cran.rstudio.com/bin/windows/base/
  * Linux: https://cran.rstudio.com/bin/linux/

Then install RStudio. To do so, see https://www.rstudio.com/ide/download/desktop.

Verify that you can install add-on R packages by installing the 'fields' package. In RStudio, go to 'Tools->Install Packages'. In the resulting dialog box, enter 'fields' (without quotes) in the 'Packages' field. Depending on the location specified in the 'Install to Library' field, you may need to enter your administrator password. To be able to install packages to the directory of an individual user, you may need to do the following:

  * In R, enter the command `Sys.getenv()['R_LIBS_USER']`.
  * Create the directory specified in the result that R returns, e.g., on a Mac, this might be `~/Library/R/3.5/library`.

R has many, many add-on packages that provide additional functionality. We'll use some of them during the bootcamp, and it's best if you've already installed them (though you can install them as needed).


To install the packages for the bootcamp, please run the following command within R:

```
install.packages(c('chron','colorspace','codetools','DBI','devtools','dichromat','digest','doParallel', 'dplyr', 'fields',
'foreach', 'ggplot2','gridExtra','gtable','inline','iterators','knitr','labeling','lattice','lme4','mapproj','maps','munsell','proftools',
'proto','purrr', 'rbenchmark','RColorBrewer','Rcpp','reshape2','rJava','RSQLite','scales','spam',
'stringr','tidyr','xlsx','xlsxjars','xtable'), repos = "https://cran.cnr.berkeley.edu")
```

If it says it can't find the packages, you may change from `repos = "https://cran.cnr.berkeley.edu"` to `repos = "http://cran.cnr.berkeley.edu"` in the above command.

For more detailed installation instructions for Windows, see the windowsInstall.html file.
