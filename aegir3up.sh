#!/bin/bash
set -e
set -x
export AEGIR3_PLAYBOOK=`pwd`/platypus-aegir3.yaml
cd aegir3 && ./aegir3up.sh
