FROM registry.access.redhat.com/ubi9:9.3

USER root

# Install pip dependencies
RUN yum install -y python3-pip
COPY requirements.txt requirements.yaml /tmp/
RUN pip install -r /tmp/requirements.txt
RUN ansible-galaxy install -r /tmp/requirements.yaml

ENV \
    GECOS="Keycloak user" \
    HOME="/home/keycloak" \
    UID="185" \
    USER="keycloak"
RUN groupadd -r $USER -g $UID \
  && useradd -u $UID -r -g root -G $USER -m -d $HOME -s /sbin/nologin -c "$GECOS" $USER
RUN cp /etc/passwd $HOME/passwd
RUN chmod ug+rwX $HOME $HOME/passwd

USER 1001
WORKDIR $HOME
