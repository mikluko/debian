# syntax=docker/dockerfile:1.4
FROM debian:latest

RUN apt-get update && \
	apt-get install -y apt-utils aptitude && \
	apt-get -y upgrade && \
	apt-get install -y \
		dumb-init \
		dnsutils \
		curl \
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

ENTRYPOINT ["/usr/bin/dumb-init"]

CMD ["zsh"]