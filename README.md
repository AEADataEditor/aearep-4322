# Docker image for AEJMicro-2019-0377

## Purpose

Run the analysis associated with AEJMicro-2019-0377.

## Prerequisites

Needs the code from the openICPSR deposit in a parallel directory called `191522` (this is the naturally directory when downloading the replication package from openICPSR and unzipping).

## Build

Adjust the contents of `.myconfig.sh` to your needs (it currently contains the build that was published).

All libraries used by the paper are installed in the image.

## Re-use existing image

The resulting docker image was uploaded to [Docker Hub](https://hub.docker.com/). Search for `aearep-4322`

```
docker pull aeadataeditor/aearep-4322:latest
```

## Run

You can run the image interactively with `run_docker.sh` or launch Rstudio with `start_rstudio.sh`. If not using a Bash shell, inspect the code how to map drives into the Docker image. 