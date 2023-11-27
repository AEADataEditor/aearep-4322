# R 4.1.2 released November 2021. 
# Pass variables into the file
ARG VERSION=4.3.1
ARG TYPE=verse

FROM rocker/$TYPE:$VERSION

COPY setup.R .
COPY RCPP_package RCPP_package
RUN R CMD BATCH setup.R


