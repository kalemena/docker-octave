ARG IMAGE_FROM=ubuntu:22.04
FROM ${IMAGE_FROM}

# Build-time metadata as defined at http://label-schema.org
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="Kalemena Octave" \
      org.label-schema.description="Kalemena Octave" \
      org.label-schema.url="private" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/kalemena/docker-octave" \
      org.label-schema.vendor="Kalemena" \
      org.label-schema.version=$VERSION \
      org.label-schema.schema-version="1.0"

ENV LANG=C.UTF-8
ENV DEBIAN_FRONTEND noninteractive
ENV TZ=Europe/Paris

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone

RUN apt-get update -y; \
    apt-get upgrade -y; \
	apt-get install -y mesa-utils octave; \
	apt-get clean; \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*;

CMD [ "/bin/bash" ]
# CMD [ "octave", "--force-gui" ]