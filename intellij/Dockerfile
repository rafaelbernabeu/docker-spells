FROM rbbernabeu/jdk11
LABEL maintainer="Rafael Bernabeu"

RUN apt-get update && apt-get upgrade -y
RUN apt-get install net-tools netcat wget curl tcpdump gdb man-db -y

RUN mkdir /opt/tools
RUN cd /tmp && wget https://download.jetbrains.com/idea/ideaIU-2020.3.2.tar.gz
RUN tar -xzf /tmp/ideaIU-2020.3.2.tar.gz -C /opt/tools/ && rm /tmp/ideaIU-2020.3.2.tar.gz

RUN apt-get install libxcursor1 libgbm1 libpango-1.0-0 libpangocairo-1.0-0 libxss1 -y

RUN apt-get install git maven npm firefox -y
RUN npm install -g @angular/cli ; exit 0

RUN mkdir -p /home/developer
RUN echo "developer:x:1000:1000:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd
RUN echo "developer:x:1000:" >> /etc/group
RUN chown developer:developer -R /home/developer

RUN chown developer:developer -R /opt/tools

USER developer
ENV HOME /home/developer
WORKDIR /home/developer

CMD /opt/tools/idea-IU-203.7148.57/bin/idea.sh