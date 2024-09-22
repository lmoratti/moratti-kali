# Moratti Kali Docker Image

This repository contains a Dockerfile that builds a custom Kali Linux environment with a variety of pre-installed cloud security and pentesting tools. The container is based on the official Kali Linux rolling image and is optimized to avoid unnecessary package installations, keeping the image minimal yet fully functional. 

It will become more customized over time. You are welcome to use it, if you like it.

## Table of Contents

- [Features](#features)
- [Pre-installed Tools](#pre-installed-tools)
- [Getting Started](#getting-started)


## Features

- **Based on Kali Linux**: The container is built on the official `kalilinux/kali-rolling` image.
- **Essential Tools**: Pre-installed essential tools such as `curl`, `wget`, `vim`, `git`, and various networking utilities.
- **Cloud Security Tools**: Includes a curated set of cloud-focused security tools for penetration testing and auditing cloud infrastructure.
- **Clean and Optimized**: The image is cleaned up to remove unnecessary files, reducing size while ensuring functionality.

## Pre-installed Tools

The following tools are pre-installed in the image:

- **General Tools**:
  - `curl`
  - `wget`
  - `git`
  - `vim`
  - `net-tools`
  - `iputils-ping`
  - `nmap`
  - `python3`
  - `golang`
  
- **Security Tools**:
  - `ncat`
  - `metasploit-framework`
  - `pacu`
  - **Cloud Security Repositories**:
    - [Moratti Cloud Toolkit](https://github.com/lmoratti/moratti-cloud-toolkit)
    - [Hacking the Cloud](https://github.com/Hacking-the-Cloud/hackingthe.cloud)
    - [Risky Records](https://github.com/lmoratti/risky-records)
    - [PMapper - Justin Moorcroft fork](https://github.com/Fennerr/PMapper)
    - [Cloudsplaining](https://github.com/salesforce/cloudsplaining)
    - [Apeman](https://github.com/hotnops/apeman)
    - [Parliament](https://github.com/duo-labs/parliament)
    - [AWS Lint IAM Policies](https://github.com/welldone-cloud/aws-lint-iam-policies)
    - [IAMSpy](https://github.com/WithSecureLabs/IAMSpy)
    - [Prowler](https://github.com/prowler-cloud/prowler)
    - [IAMDump](https://github.com/claranet/iamdump)
    - [IAMDumb](https://github.com/lmoratti/iamdumb)
    - [CloudFox](https://github.com/BishopFox/cloudfox)

## Getting Started

### Prerequisites

To use this Docker container, you need to have Docker installed on your system. You can install Docker by following the official instructions for your operating system:

- [Docker Installation Guide](https://docs.docker.com/get-docker/)

### Building the Image

Clone the repository and build the Docker image locally:

I use podman but you should be able to get docker working by changing `podman` to `docker` below.
```bash
git clone https://github.com/lmoratti/moratti-kali.git
cd moratti-kali
podman build -t kali-cloud-tools .
```


### Running the image

Start the container.
```bash
sudo podman network create -d bridge pentest
podman run --tty --interactive --net=pentest --privileged moratti-kali
```
Add the startup to the alias "kali"
```bash
echo "alias kali='podman run --tty --interactive --net=pentest --privileged moratti-kali'" >> ~/.zshrc
```
