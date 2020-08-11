FROM ubuntu:20.04
MAINTAINER Rafael Bernabeu "rbbernabeu@gmail.com"

# --- GLOBAL CONFIG ---
RUN sed 's/main$/main universe/' -i /etc/apt/sources.list
RUN apt-get update && apt-get upgrade -y

# Common
RUN apt-get install -y software-properties-common apt-transport-https apt-utils net-tools wget curl man-db

# Popcorn-Time https://github.com/popcorn-official/popcorn-desktop
RUN apt-get install -y unzip libcanberra-gtk-module libgconf-2-4 libatomic1
RUN mkdir /opt/popcorn-time
RUN wget https://get.popcorntime.app/repo/build/Popcorn-Time-0.4.4-linux64.zip
RUN unzip Popcorn-Time-0.4.4-linux64.zip -d /opt/popcorn-time
RUN ln -sf /opt/popcorn-time/Popcorn-Time /usr/bin/popcorn-time

RUN apt-get install -y libnss3
RUN apt-get install -y libx11-xcb1
RUN apt-get install -y libxtst-dev
RUN apt-get install -y libxss1
RUN apt-get install -y libatspi2.0-0
RUN apt-get install -y libgtk-3-0
RUN apt-get install -y libgl-dev
RUN apt-get install -y libcanberra-gtk-module

RUN mkdir -p /home/developer
RUN mkdir /home/developer/tools
RUN echo "developer:x:1000:1000:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd
RUN echo "developer:x:1000:" >> /etc/group
RUN chown developer:developer -R /home/developer

CMD /usr/bin/popcorn-time
