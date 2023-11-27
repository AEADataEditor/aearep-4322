# Installing all necessary packages in R

# The following codes are partially borrowed from https://github.com/labordynamicsinstitute/paper-template/blob/master/programs/global-libraries.R

# Set the date of snapshot
#ppm.date <- "2023-10-25"
#options(repos=paste0("https://packagemanager.posit.co/cran/",ppm.date,"/"))

# Note: Using this with a specific version number may fail, since not all dependencies might be met.
# Debug interactively, then identify all installed packages that needed to be pinned.

# Define a function "pkgTest" for installation
pkgTest <- function(x,y="")
{
  if (!require(x,character.only = TRUE))
  {
    if ( y == "" ) 
    {
      install.packages(x,dep=TRUE)
    } else {
      remotes::install_version(x, y)
    }
    if(!require(x,character.only = TRUE)) stop("Package not found")
  }
  return("OK")
}

# Intall "remotes" package (as this is used in "pkgTest" function defined above)
install.packages("remotes")

# List of packages
global.libraries <- c("AER",
                      "BH",
                      "Rcpp",
                      "data.table",
                      "devtools",
                      "doParallel",
                      "dplyr",
                      "dtplyr",
                      "fixest",
                      "foreach",
                      "foreign",
                      "geosphere",
                      "ggplot2",
                      "ggpmisc",
                      "gridExtra",
                      "haven",
                      "here",
                      "lfe",
                      "lubridate",
                      "nloptr",
                      "readr",
                      "renv",
                      "reshape2",
                      "rootSolve",
                      "scales",
                      "stargazer",
                      "stringr",
                      "texreg",
                      "tibble",
                      "tidyr",
                      "tidyverse",
                      "vtable",
                      "xtable")

# Intall packages in the list
results <- sapply(as.list(global.libraries), pkgTest)

# Set homedirectory
homedirectory = here::here()


# Install local package
devtools::install_local(file.path(homedirectory, "RCPP_package/MyPackageCATDynamics_1.0.tar.gz") )

