#!/usr/bin/env bash


$DFL_PYTHON "$DFL_SRC/main.py" videoed denoise-image-sequence \
    --input-dir "$DFL_WORKSPACE/data_dst"

