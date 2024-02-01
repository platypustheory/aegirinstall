Minion (Aegir remote web server) setup example, currently experimental.

On a newly-provisioned Ubuntu 20.04 VM:

```
# git clone https://github.com/platypustheory/aegirinstall
# cd aegirinstall/minion
# ansible-playbook roles.yaml --connection=local -i inventory
# ansible-playbook minion.yaml --connection=local -i inventory
```

You now have an Aegir remote web server set up with Nginx and a local Mysql, ready to be added and verified in Aegir 3.

Subsequent steps coming soon...
