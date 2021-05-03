# dockerfile-ansible

This Docker image is based on the `python:3.9.4-slim` base image.

## Quick start

To run ansible container:

```
docker run --rm satken2/ansible ansible
```


## Tutorial


### Running playbook

**STEP1**<br>
Create your playbook directory and cd into it.

```
# mkdir <PLAYBOOK_DIR> && cd <PLAYBOOK_DIR>
```

**STEP2**<br>
Place or edit your playbook.
```
# vim site.yml
```

**STEP3**<br>
Run docker container.<br>
Following command is equivalent to `ansible-playbook  <YAML_FILENAME>`.

```
docker run -v "${PWD}":/work:ro -v ~/.ansible/roles:/root/.ansible/roles -v ~/.ssh:/root/.ssh:ro --rm satken2/ansible ansible-playbook <YAML_FILENAME>
```

To run playbook properly, you need to bind following directories.

| Local location | Container location | Usage |
|----------------|--------------------|-------|
| `$pwd`         |     `/work`        | For reading local playbook  |
| `~/.ansible/roles`| `/root/.ansible/roles` | For persisting installed roles |
|  `~/.ssh`      |    `/root/.ssh`    | For SSH authentication |

### Installing roles from Ansible Galaxy

Following command is equivalent to `ansible-galaxy install <ROLE_NAME>`<br>
```
docker run -v ~/.ansible/roles:/root/.ansible/roles --rm satken2/ansible ansible-galaxy install <ROLE_NAME>
```

Role will be installed into `~/.ansible/roles` of your host filesystem.


### Ansible Lint

This container also has ansible-lint command<br>
```
docker run --rm satken2/ansible ansible-lint -p <YAML_FILENAME>
```Tagged

## Creating aliases

To create aliases of `docker run ...` commands, run `set_aliases.sh`.<br>
This script creates aliases for following ansible commands.

 - ansible
 - ansible-playbook
 - ansible-galaxy
 - ansible-vaults


## Tags

### Full image

tag: `satken2/ansible:x.x.x`
This image contains ansible collections listed in [Collection Index](https://docs.ansible.com/ansible/latest/collections/index.html) as of 2021-05-03

### Slim image

tag: `satken2/ansible:x.x.x-slim`

Slim image contains collections below:
- ansible.netcommon
- ansible.posix
- ansible.utils
- ansible.windows

