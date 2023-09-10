#! /usr/local/env bash

set -euC

pip install nbconvert[webpdf]
playwright install chromium
playwright install-deps
