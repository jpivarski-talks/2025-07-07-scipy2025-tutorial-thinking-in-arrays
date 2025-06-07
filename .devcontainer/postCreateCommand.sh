#!/usr/bin/bash

mamba env create -f environment.yml

echo "conda activate mcr.microsoft.com/devcontainers/base:ubuntu-22.04" >> /home/vscode/.bashrc

cp /opt/conda/envs/mcr.microsoft.com/devcontainers/base:ubuntu-22.04/bin/jupyter /opt/conda/bin/jupyter
