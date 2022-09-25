#!/usr/bin/env bash


wget https://github.com/nagadit/DeepFaceLab_Linux/releases/download/1.0/pretrain_Quick96.zip
unzip -q pretrain_Quick96.zip -d "$DFL_SRC"
rm pretrain_Quick96.zip