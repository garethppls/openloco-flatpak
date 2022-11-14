FROM ubuntu:latest
RUN dpkg --add-architecture i386
RUN apt update
RUN apt upgrade -y
RUN apt install --no-install-recommends -y \
	ca-certificates \
	pkg-config:i386 \
	g++-multilib \
	cmake \
	git \
	ninja-build \
	libopenal-dev:i386 \
	libsdl2-dev:i386 \
	libpng-dev:i386 \
	flatpak \
	flatpak-builder \
	nano
RUN flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
RUN flatpak install -y flathub org.freedesktop.Platform//22.08 org.freedesktop.Sdk//22.08
RUN useradd -ms /bin/bash openloco_builder
USER openloco_builder
ADD build.sh /home/openloco_builder/build.sh
ADD io.openloco.OpenLoco.yml /home/openloco_builder/io.openloco.OpenLoco.yml
CMD /bin/bash