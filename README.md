# atcoder-python-role

Ansible Playbook to setup Python3 environment for [Atcoder](https://atcoder.jp).  
It installs pyenv on linux VMs.  

## Versions

```
% head -n 5 roles/pyenv/tasks/main.yml
- name: set versions
  set_fact:
    python_version: 3.4.3
    numpy_version: 1.8.2
    scipy_version: 0.13.3
```
