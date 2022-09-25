#!/usr/bin/env bash


$DFL_PYTHON "$DFL_SRC/main.py" extract \
    --input-dir "$DFL_WORKSPACE/data_dst" \
    --output-dir "$DFL_WORKSPACE/data_dst/aligned" \
    --detector s3fd \
    --max-faces-from-image 0 \
    --output-debug

