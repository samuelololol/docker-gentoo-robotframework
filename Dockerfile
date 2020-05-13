FROM samuelololol/docker-gentoo-glibc:latest
MAINTAINER samuelololol <samuelololol@gmail.com>
RUN echo "dev-python/robotframework ~amd64" >> /etc/portage/package.accept_keywords
RUN emerge -uv dev-python/robotframework dev-python/configparser
RUN emerge -uv dev-vcs/git vim
RUN emerge -uv net-fs/cifs-utils
RUN emerge -uv net-fs/nfs-utils
