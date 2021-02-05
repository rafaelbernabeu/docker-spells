FROM ubuntu:20.04
LABEL maintainer="Rafael Bernabeu"

# --- GLOBAL CONFIG ---
RUN sed 's/main$/main universe/' -i /etc/apt/sources.list
RUN apt-get update && apt-get upgrade -y

# Common
RUN apt-get install -y wget

# Popcorn-Time https://github.com/popcorn-official/popcorn-desktop
RUN apt-get install -y unzip 
RUN mkdir /opt/popcorn-time
RUN wget https://get.popcorntime.app/repo/build/Popcorn-Time-0.4.4-linux64.zip
RUN unzip Popcorn-Time-0.4.4-linux64.zip -d /opt/popcorn-time
RUN rm Popcorn-Time-0.4.4-linux64.zip
RUN ln -sf /opt/popcorn-time/Popcorn-Time /usr/bin/popcorn-time

RUN apt-get install -y libnss3 libgconf-2-4 libatomic1 libx11-xcb1 libxtst-dev libxss1 libatspi2.0-0 libgtk-3-0 libgl-dev libcanberra-gtk-module

COPY settings.db /home/developer/.config/Popcorn-Time/Default/data/settings.db

RUN mkdir -p /home/developer
RUN mkdir /home/developer/tools
RUN echo "developer:x:1000:1000:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd
RUN echo "developer:x:1000:" >> /etc/group
RUN chown developer:developer -R /home/developer

USER developer
ENV HOME /home/developer
WORKDIR /home/developer

CMD /usr/bin/popcorn-time
