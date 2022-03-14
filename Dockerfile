FROM ubuntu:20.04

RUN apt update
RUN apt install net-tools iproute2 can-utils kmod software-properties-common -y
RUN add-apt-repository ppa:lely/ppa -y
RUN apt update
RUN apt install liblely-coapp-dev liblely-co-tools python3-dcf-tools -y

ADD docker-entrypoint.sh .

ENTRYPOINT ["sh", "docker-entrypoint.sh"]
