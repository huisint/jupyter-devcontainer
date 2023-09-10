#! /usr/bin/env bash

set -euC

VENV_DIR="${1:-.venv}"
VENV_NAME="${2:-jupyter_venv}"
VENV_DISPLAY_NAME="${3:-Jupyter(venv)}"

python3 -m venv "$VENV_DIR" --system-site-packages
export PATH="$VENV_DIR/bin:$PATH"
pip install jupyter
ipython kernel install --name "$VENV_NAME" --display-name "${VENV_DISPLAY_NAME}"
