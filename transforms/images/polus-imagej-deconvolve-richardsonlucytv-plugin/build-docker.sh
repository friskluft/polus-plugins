#!/bin/bash

version=$(<VERSION)
docker build . -t labshare/polus-imagej-deconvolve-richardsonlucytv-plugin:${version}