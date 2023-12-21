Aegir 3 Installation From Git With Ansible
==========================================

1. On a newly-provisioned Ubuntu 20.04 VM, as root:

```
# git clone https://github.com/platypustheory/aegirinstall
# cd aegirinstall
```

2. Edit aegir3/aegir3.yml and fill in mysql_root_password and aegir_frontend_url.

3. From the aegirinstall directory:

```
# ./aegir3up.sh 
```

--Dan Friedman (@llamech), Consensus Enterprises, on behalf of Platypus Media.
