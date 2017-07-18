FROM debian:latest

RUN apt-get update && \
	apt-get install -y apt-utils aptitude && \
	apt-get -y upgrade && \
	apt-get install -y \
		less \
		man-db \
		bash-completion \
		vim-nox \
		htop

RUN update-alternatives --set editor /usr/bin/vim.nox
RUN cp /etc/skel/.bashrc /root/.bashrc

WORKDIR /root
