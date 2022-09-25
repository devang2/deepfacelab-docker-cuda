#!/usr/bin/env bash


wget https://github.com/nagadit/DeepFaceLab_Linux/releases/download/1.0/pretrain_FFHQ.zip
unzip -q pretrain_FFHQ.zip -d "$DFL_SRC"
rm pretrain_FFHQ.zip