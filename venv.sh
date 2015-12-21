#!/bin/sh

virtualenv venv
. ./venv/bin/activate
for pkg in setuptools pip wheel
do
  pip install -U "${pkg?}"
done
pip install -e .
