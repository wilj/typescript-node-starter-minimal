FROM gitpod/workspace-mongodb

USER root

RUN export DEBIAN_FRONTEND='noninteractive' \
    && apt-get update \
    && apt-get install -y \
        build-essential \
        netcat \
        tldr \
    && rm -rf /var/lib/apt/lists/*

USER gitpod

RUN wget https://github.com/neovim/neovim/releases/download/v0.7.2/nvim-linux64.deb \
    && sudo dpkg -i nvim-linux64.deb \
    && rm nvim-linux64.deb