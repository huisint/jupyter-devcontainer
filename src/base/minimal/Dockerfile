FROM mcr.microsoft.com/devcontainers/base:debian
ARG JUPYTER_VENV_DIR=/opt/jupyter

LABEL org.opencontainers.image.authors="Shuhei Nitta(@huisint)"
LABEL org.opencontainers.image.licenses="MIT"

COPY install-deps.sh /tmp/
RUN bash /tmp/install-deps.sh
COPY create-jupyter-env.sh /tmp/
RUN bash /tmp/create-jupyter-env.sh ${JUPYTER_VENV_DIR}
COPY index.tex.j2 ${JUPYTER_VENV_DIR}/share/jupyter/nbconvert/templates/latex
ENV PATH=${JUPYTER_VENV_DIR}/bin:${PATH}
ENV JUPYTER_VENV_DIR=${JUPYTER_VENV_DIR}
