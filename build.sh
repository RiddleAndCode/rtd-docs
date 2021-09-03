#!/bin/bash
set -x
rm -rf venv
python3.7 -mvirtualenv ./venv
./venv/bin/python -m pip install --upgrade --no-cache-dir pip setuptools
./venv/bin/python -m pip install --upgrade --no-cache-dir mock==1.0.1 pillow==5.4.1 'alabaster>=0.7,<0.8,!=0.7.5' commonmark==0.8.1 recommonmark==0.5.0 mkdocs
./venv/bin/python -m pip install --exists-action=w --no-cache-dir -r requirements.txt
