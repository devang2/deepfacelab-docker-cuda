FROM nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04
RUN apt-get update && apt-get -y install python3.7 python3-distutils ffmpeg curl python-qt4 git
RUN curl -fsSL https://bootstrap.pypa.io/get-pip.py | python3.7
COPY requirements.txt /requirements.txt
RUN python3.7 -m pip install -r /requirements.txt
ENV DFL_PYTHON=python3.7 DFL_ROOT=/app
ENV DFL_WORKSPACE=$DFL_ROOT/workspace DFL_SRC=$DFL_ROOT/DeepFaceLab
RUN git clone --depth 1 https://github.com/iperov/DeepFaceLab.git $DFL_ROOT/DeepFaceLab
COPY ./scripts $DFL_ROOT/scripts
RUN $DFL_ROOT/scripts/1_clear_workspace.sh
WORKDIR $DFL_ROOT
