#!/bin/bash

version=$(<VERSION)
datapath=$(readlink --canonicalize ../data)

# Inputs
opName=
in1=/data/input
sigma=
calibration=

# Output paths
out=/data/output

docker run --mount type=bind,source=${datapath},target=/data/ \
            polusai/polus-imagej-filter-tubeness-plugin:${version} \
            --opName ${opName} \
            --in1 ${in1} \
            --sigma ${sigma} \
            --calibration ${calibration} \
            --out ${out}
            