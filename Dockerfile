FROM ubuntu:18.04

RUN apt-get update -y
RUN apt-get install -y iproute2 iputils-ping
