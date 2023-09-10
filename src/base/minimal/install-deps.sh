#! /usr/local/env bash

set -euC

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y --no-install-recommends \
    python3-dev \
    python3-pip \
    python3-venv
apt-get clean -y
rm -rf /var/lib/apt/lists/*
