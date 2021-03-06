#!/bin/bash

alias sudo='sudo '
alias ansible='docker run -v "${PWD}":/work:ro -w /work --rm satken2/ansible ansible'
alias ansible-playbook='docker run -v "${PWD}":/work:ro -w /work -v ~/.ansible/roles:/root/.ansible/roles -v ~/.ssh:/root/.ssh:ro --rm satken2/ansible ansible-playbook'
alias ansible-galaxy='docker run -v ~/.ansible/roles:/root/.ansible/roles --rm satken2/ansible ansible-galaxy'
alias ansible-vault='docker run -v "${PWD}":/work -w /work --rm satken2/ansible ansible-vault'
alias ansible-lint='docker run -v "${PWD}":/work -w /work --rm satken2/ansible ansible-lint'
