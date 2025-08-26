FROM registry.access.redhat.com/ubi10:10.0

USER root

ENV HOME=/home/ansible

# Install pip dependencies
RUN yum install -y python3-pip
COPY requirements.txt requirements.yaml /tmp/
RUN pip install -r /tmp/requirements.txt
RUN ansible-galaxy collection install -r /tmp/requirements.yaml -p /usr/share/ansible/collections --force

WORKDIR $HOME
