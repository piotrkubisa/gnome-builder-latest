# Adapted from: https://github.com/CromFr/docker-gnome-builder/blob/master/Dockerfile

FROM fedora

RUN yum update -y \
	&& yum install -y dnf dnf-plugins-core \
	&& dnf copr -y enable piqus/gnome-builder \
	&& dnf install -y gnome-builder

RUN useradd -u 1000 -d /home/dev -m dev

USER dev
ENV HOME /home/dev
CMD gnome-builder
