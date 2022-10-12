# syntax=docker/dockerfile-upstream:master-labs
FROM docker.io/nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04
ENV DFL_PYTHON=python3.7 DFL_ROOT=/app
ENV DFL_WORKSPACE=$DFL_ROOT/workspace DFL_SRC=$DFL_ROOT/DeepFaceLab
RUN useradd -ms /bin/bash --home $DFL_ROOT app
WORKDIR $DFL_ROOT
RUN apt update && apt install -y --no-install-recommends \
    python3.7 \
    python3-distutils \
    ffmpeg \
    python-qt4 && \
    rm -rf /var/lib/apt/lists/*
RUN python3.7 -c "from urllib.request import urlopen; \
exec(urlopen('https://bootstrap.pypa.io/get-pip.py').read())"
COPY requirements.txt /requirements.txt
RUN python3.7 -m pip install -r /requirements.txt
USER app
ADD https://github.com/iperov/DeepFaceLab.git $DFL_ROOT/DeepFaceLab
COPY ./scripts $DFL_ROOT/scripts
RUN $DFL_ROOT/scripts/1_clear_workspace.sh
