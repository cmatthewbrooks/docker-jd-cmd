# Docker image for [jd-cmd](https://github.com/kwart/jd-cmd)

Forked from https://github.com/jgiannuzzi/docker-jd-cmd.

## Overview

jd-cmd is a command line Java Decompiler which uses [JD Core from Java Decompiler](http://jd.benow.ca/) project. 

## Usage

```
# Build the image
> ./jd.sh build

# Create a local data directory
> pwd
/path/to/docker-jd-cmd

> mkdir data

# Move a JAR file into our local workspace
> cp /path/to/classes.jar /path/to/docker-jd-cmd/data

# Decompile the JAR file with a few options:
# -n - displays line numbers in decompiled classes
# -eu - Escape unicode characters
# -od - Specify an output directory so we can write everything locally
> ./jd.sh run -n -eu -od data/output_dir /path/to/docker-jd-cmd/data/classes.jar
