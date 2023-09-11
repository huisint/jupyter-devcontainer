ARG BASE_IMAGE_TYPE=minimal
ARG BASE_IMAGE_TAG=latest
ARG JULIA_VERSION=latest

FROM julia:${JULIA_VERSION} as julia

FROM ghcr.io/huisint/jupyter-devcontainer/${BASE_IMAGE_TYPE}:${BASE_IMAGE_TAG} as runner
COPY --from=julia /usr/local/julia /tmp/julia
RUN rsync -rl /tmp/julia /usr/local \
 && rm -r /tmp/julia
ENV PATH /usr/local/julia/bin:${PATH}
