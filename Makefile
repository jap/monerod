VERSION=`git describe --tags`

all:
	DOCKER_BUILDKIT=1 docker build --build-arg ARCHIVE=monero-linux-x64-v$(VERSION).tar.bz2 -t jap171/monerod:$(VERSION) -t jap171/monerod:latest .
