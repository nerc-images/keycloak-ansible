FROM registry.access.redhat.com/ubi9:9.3

USER root

ENV HOME=/home/ansible

# Install pip dependencies
RUN yum install -y python3-pip
COPY requirements.txt requirements.yaml /tmp/
RUN pip install -r /tmp/requirements.txt
RUN ansible-galaxy install -r /tmp/requirements.yaml

WORKDIR $HOME
