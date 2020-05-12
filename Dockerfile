FROM gentoo/portage:latest as portage
FROM gentoo/stage3-amd64:latest
MAINTAINER samuelololol <samuelololol@gmail.com>
COPY --from=portage /var/db/repos/gentoo /var/db/repos/gentoo
RUN echo "dev-python/robotframework ~amd64" >> /etc/portage/package.accept_keywords
RUN echo "*/* PYTHON_TARGETS: python3_6" >> /etc/portage/package.use/python
RUN echo "*/* PYTHON_SINGLE_TARGET: -* python3_6" >> /etc/portage/package.use/python
RUN emerge -uv dev-python/robotframework dev-python/configparser
RUN emerge -uv dev-vcs/git vim
RUN emerge -uv net-fs/cifs-utils net-fs/nfs-utils
