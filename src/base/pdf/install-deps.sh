#! /usr/local/env bash

set -euC

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y --no-install-recommends \
    texlive-fonts-recommended \
    texlive-xetex \
    texlive-lang-english \
    texlive-lang-japanese \
    texlive-lang-chinese \
    texlive-plain-generic \
    pandoc \
    inkscape
apt-get clean -y
rm -rf /var/lib/apt/lists/*
