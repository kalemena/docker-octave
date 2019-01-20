FROM ubuntu:18.04

MAINTAINER Kalemena

RUN apt-get update -y; \
    apt-get upgrade -y; \
	apt-get install -y mesa-utils octave; \
	apt-get clean; \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*;

CMD [ "/bin/bash" ]
# CMD [ "octave", "--force-gui" ]