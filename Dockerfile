FROM gentoo/portage:latest as portage
FROM gentoo/stage3-amd64:latest
MAINTAINER samuelololol <samuelololol@gmail.com>
COPY --from=portage /var/db/repos/gentoo /var/db/repos/gentoo
RUN echo "dev-python/robotframework ~amd64" >> /etc/portage/package.keywords
RUN echo "dev-python/robotframework-sshlibrary ~amd64" >> /etc/portage/package.keywords
RUN emerge -uv \
    dev-python/robotframework \
    dev-python/robotframework-sshlibrary \
    dev-python/configparser \
    dev-vcs/git
