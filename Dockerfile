FROM kalilinux/kali-rolling

LABEL maintainer "icorrea <iago.cunhac@gmail.com>"

RUN DEBIAN_FRONTEND='noninteractive' apt update \
	&& DEBIAN_FRONTEND='noninteractive' apt dist-upgrade -y \
	&& DEBIAN_FRONTEND='noninteractive' apt autoremove -y \
	&& DEBIAN_FRONTEND='noninteractive' apt clean \
	&& DEBIAN_FRONTEND='noninteractive' apt install kali-tools-top10 man-db exploitdb \
	dirb wordlists netcat enum4linux iputils-ping vim netcat python2 -y

WORKDIR /

CMD ["bash"]
