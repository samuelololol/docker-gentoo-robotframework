FROM gentoo/portage:latest as portage
FROM gentoo/stage3-amd64:latest
MAINTAINER samuelololol <samuelololol@gmail.com>
COPY --from=portage /var/db/repos/gentoo /var/db/repos/gentoo
RUN echo "dev-python/robotframework ~amd64" >> /etc/portage/package.accept_keywords
RUN echo "dev-python/robotframework PYTHON_TARGETS: python3_6" >> /etc/portage/package.use/robotframework
RUN emerge -uv \
    dev-python/robotframework \
    dev-python/configparser \
    dev-vcs/git
