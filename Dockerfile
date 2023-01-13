# syntax=docker/dockerfile:1.4
FROM debian:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN --mount=type=cache,target=/var/lib/apt,sharing=locked \
    rm -f /etc/apt/apt.conf.d/docker-clean && \
    apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y \
        dumb-init \
        dnsutils \
        curl \
        inetutils-ping \
        less \
        man-db \
        zsh \
        zsh-autosuggestions \
        zsh-syntax-highlighting \
        vim-nox \
        htop

RUN update-alternatives --set editor /usr/bin/vim.nox

RUN usermod -s /usr/bin/zsh root

ADD zshrc /root/.zshrc

ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD ["sleep", "infinity"]
