# Use the official Kali Linux image from the Docker Hub
FROM kalilinux/kali-rolling

# Set environment variables to avoid user prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update Kali Linux packages and install some basic tools
RUN apt-get update && \
    apt-get -y full-upgrade && \
    apt-get install -y --no-install-recommends \
    curl \
    wget \
    git \
    vim \
    net-tools \
    iputils-ping \
    nmap \
    python3 \
    pacu \
    ncat \
    golang \
    metasploit-framework \
    && apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN cd ~ && \
    git clone https://github.com/lmoratti/moratti-cloud-toolkit.git &&\
    git clone https://github.com/Hacking-the-Cloud/hackingthe.cloud.git &&\
    git clone https://github.com/lmoratti/risky-records.git &&\
    git clone https://github.com/Fennerr/PMapper.git &&\
    git clone https://github.com/salesforce/cloudsplaining.git &&\
    git clone https://github.com/hotnops/apeman.git &&\
    git clone https://github.com/duo-labs/parliament.git &&\
    git clone https://github.com/welldone-cloud/aws-lint-iam-policies.git &&\
    git clone https://github.com/WithSecureLabs/IAMSpy.git &&\
    git clone https://github.com/prowler-cloud/prowler.git &&\
    git clone https://github.com/claranet/iamdump.git &&\
    git clone https://github.com/lmoratti/iamdumb.git &&\
    git clone https://github.com/BishopFox/cloudfox.git
# Set working directory
WORKDIR /root
# Default command when running the container
CMD ["/bin/bash"]

