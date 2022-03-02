# This file is the build environment to use PPR-Net

# Get the base image.
FROM nvidia/cuda:11.5.0-cudnn8-devel-ubuntu18.04 

# Next we need to update and install
COPY requirements.txt .
RUN apt update && apt upgrade -y \
    && echo "\n\nRUNNING: apt-get install software-properties-common -y\n\n" \
    && apt-get install software-properties-common -y \
    && echo "\n\nRUNNING: apt-get install libffi-dev\n\n" \
    && apt-get install libffi-dev \
    && echo "\n\nRUNNING: add-apt-repository ppa:deadsnakes/ppa\n\n" \
    && add-apt-repository ppa:deadsnakes/ppa \
    && echo "\n\nRUNNING: apt-get install graphviz libgl1-mesa-glx ffmpeg libsm6 libxext6 -y\n\n" \
    && apt-get install graphviz libgl1-mesa-glx ffmpeg libsm6 libxext6 -y \
    && echo "\n\nRUNNING: apt-get update\n\n" \
    && apt-get update \
    && echo "\n\nRUNNING: apt-get install python3.7-dev -y\n\n" \
    && apt-get install python3.7-dev -y \
    && echo "\n\nRUNNING: apt-get install python3-pip -y\n\n" \
    && apt-get install python3-pip -y \
    && echo "\n\n\RUNNING: python3.7 -m pip install --upgrade pip\n\n" \
    && python3.7 -m pip install --upgrade pip \
    && echo "\n\nRUNNING: python3.7 -m pip install setuptools ez_setup\n\n" \
    && python3.7 -m pip install setuptools ez_setup \
    && echo "\n\nRUNNING: python3.7 -m pip install -r requirements.txt\n\n" \
    && python3.7 -m pip install -r requirements.txt \
    && echo "\n\n RUNNING: mkdir cab420\n\n" \
    && mkdir cab420

CMD cd cab420 && jupyter notebook --ip 0.0.0.0 --no-browser --allow-root
