ARG BASE_IMAGE_TAG=latest
FROM ghcr.io/huisint/jupyter-devcontainer/minimal:${BASE_IMAGE_TAG}
COPY install-deps.sh /tmp
RUN bash /tmp/install-deps.sh
