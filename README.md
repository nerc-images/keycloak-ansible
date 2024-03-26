# keycloak-ansible

A simple image with Ansible installed to run Keycloak Ansible roles to configure Keycloak Fine-Grained Resource Permissions. 
- Based on the [UBI 9 image](https://catalog.redhat.com/software/containers/ubi9/ubi/615bcf606feffc5384e8452e).
- Uses the kubernetes.core and community.general Ansible collections.
- Used by the observabilityt cluster on NERC to configure Keycloak Fine-Grained Resource Permissions.

Base image: [registry.access.redhat.com/ubi9:9.3](https://catalog.redhat.com/software/containers/ubi9/ubi/615bcf606feffc5384e8452e)

| Python packages | Description |
| --- | --- |
| python-pip | A tool for installing and managing Python3 packages |

| Python packages | Description |
| --- | --- |
| ansible | Ansible is a radically simple IT automation system |

| Ansible packages | Description |
| --- | --- |
| kubernetes.core | Kubernetes Collection for Ansible |
| community.general | A part of the Ansible package and includes many modules and plugins supported by Ansible community which are not part of more specialized community collections |

You can pull the latest [keycloak-ansible container image](https://github.com/nerc-images/keycloak-ansible/pkgs/container/keycloak-ansible) below:

```
podman pull quay.io/nerc-images/keycloak-ansible:latest
```

You can build the container like this: 

```bash
podman build -t nerc-images/keycloak-ansible:latest .
```

You can push the container to quay.io like this: 

```bash
podman push nerc-images/keycloak-ansible:latest quay.io/nerc-images/keycloak-ansible:latest
```
