FROM ubuntu:20.04
MAINTAINER Rafael Bernabeu "rbbernabeu@gmail.com"

RUN apt update -y && apt upgrade -y
RUN apt install sudo passwd qemu-kvm libvirt-daemon libvirt-daemon-system network-manager -y

RUN mkdir -p /home/developer
RUN mkdir /home/developer/tools
RUN echo "developer:x:1000:1000:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd
RUN echo "developer:x:1000:" >> /etc/group
RUN chown developer:developer -R /home/developer

RUN echo 'developer ALL=(ALL) ALL' >> /etc/sudoers
RUN echo 'rafael' | passwd --stdin developer
RUN echo 'rafael' | passwd --stdin root

COPY crc-linux-amd64.tar.xz /home/developer
RUN cd /home/developer/; tar -xf crc-linux-amd64.tar.xz -v
RUN rm /home/developer/crc-linux-amd64.tar.xz

#RUN /home/developer/crc-linux-1.14.0-amd64/crc setup

USER developer
#CMD /usr/bin/popcorn-time
