# CAB420_docker
This is a docker setup for CAB420 

## Requirements

Currently this is running on a Ubuntu 20.04.4 LTS system with:
- Nvidia Driver 510,
- Docker version 20.10.12 (build e91ed57),
- nvidia-docker2/bionic, now 2.9.1-1 all.

## Setup

[Install Ubuntu.](https://www.tecmint.com/install-ubuntu-alongside-with-windows-dual-boot/)

[Install Required Nvidia Driver](https://linuxconfig.org/how-to-install-the-nvidia-drivers-on-ubuntu-20-04-focal-fossa-linux)

[Install Docker](https://docs.docker.com/engine/install/ubuntu/)

[Install Nvidia-docker2](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html)

Install git
```console
sudo apt install git
```

Clone Repo in the folder you want it to live.
```console
git clone https://github.com/kj87au/CAB420_docker.git
```
## Using it

Place all your work(file and folders) in the folder where the launch.sh file lives.

Launch using:
```console
bash launch.sh
```

Once the jupyter notebook is runnning open the links provided.

## Problems or Errors

It may spew some errors relating to GPU placement, would look like this...
```console
2022-03-02 02:34:01.159200: I tensorflow/stream_executor/cuda/cuda_gpu_executor.cc:939] successful NUMA node read from SysFS had negative value (-1), but there must be at least one NUMA node, so returning NUMA node zero
```
This can be ignored (at least from what I can tell)
