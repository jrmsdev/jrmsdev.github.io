#!/bin/sh
set -eu
exec docker run -it --rm -u devel \
	--name jrmsdev-site \
	--hostname jrmsdev.local \
	-v "${PWD}:/opt/jrmsdev/site" \
	--workdir /opt/jrmsdev/site \
	-p 127.0.0.1:8045:8045 \
	jrmsdev/site
