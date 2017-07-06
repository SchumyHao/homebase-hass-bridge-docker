#
# Dockerfile for rhome_hass_bridge
#

FROM node:8.1

MAINTAINER SchumyHao <bob-hjl@126.com>

ENV DEBIAN_FRONTEND noninteractive

RUN DEBIAN_FRONTEND=noninteractive apt-get update --fix-missing
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq bash
RUN DEBIAN_FRONTEND=noninteractive npm install -g homebase-hass-bridge

USER root

EXPOSE 9999

ENV HASS_IP '127.0.0.1'
ENV HASS_PORT '8123'

CMD ["rhass"]

