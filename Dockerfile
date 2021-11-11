FROM kalilinux/kali-rolling

LABEL maintainer "icorrea <iago.cunhac@gmail.com>"

RUN echo "nameserver 8.8.8.8" > /etc/resolve.conf

RUN DEBIAN_FRONTEND='noninteractive' apt update \
	&& DEBIAN_FRONTEND='noninteractive' apt dist-upgrade -y \
	&& DEBIAN_FRONTEND='noninteractive' apt autoremove -y \
	&& DEBIAN_FRONTEND='noninteractive' apt clean -y \
	&& DEBIAN_FRONTEND='noninteractive' apt install man-db metasploit-framework exploitdb \
	dirb smbclient wordlists netcat-traditional iputils-ping vim python2 wpscan -y --fix-missing

WORKDIR /

CMD ["bash"]

