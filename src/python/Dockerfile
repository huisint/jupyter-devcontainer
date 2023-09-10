ARG PYTHON_VERSION=latest
ARG BASE_IMAGE_TYPE=minimal
ARG BASE_IMAGE_TAG=latest

FROM python:${PYTHON_VERSION} as python

FROM ghcr.io/huisint/jupyter-devcontainer/${BASE_IMAGE_TYPE}:${BASE_IMAGE_TAG} as runner
COPY --from=python /usr/local /tmp/python
RUN rsync -rl /tmp/python/* /usr/local \
 && rm -r /tmp/python
