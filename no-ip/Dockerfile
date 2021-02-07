FROM ubuntu:20.04
LABEL maintainer="Rafael Bernabeu"

# --- GLOBAL CONFIG ---
RUN sed 's/main$/main universe/' -i /etc/apt/sources.list
RUN apt-get update && apt-get upgrade -y
RUN apt-get install build-essential wget -y

RUN wget http://www.noip.com/client/linux/noip-duc-linux.tar.gz
RUN tar xfz noip-duc-linux.tar.gz -C /usr/local/src/ && rm noip-duc-linux.tar.gz
RUN cd /usr/local/src/noip-2.1.9-1/ ; cat Makefile | sed '/\${BINDIR}\/\${TGT} -C -c \/tmp\/no-ip2.conf/d' > Makefile2 ; cat Makefile2 | sed '/mv \/tmp\/no-ip2.conf \${CONFDIR}\/no-ip2.conf/d' > Makefile ; rm Makefile2
RUN cd /usr/local/src/noip-2.1.9-1/ ; make install
# COPY no-ip.conf /usr/local/etc/no-ip2.conf

RUN mkdir -p /home/developer
RUN echo "developer:x:1000:1000:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd
RUN echo "developer:x:1000:" >> /etc/group
RUN chown developer:developer -R /home/developer

# USER developer
ENV HOME /home/developer
WORKDIR /home/developer

CMD ["sh", "-c", "noip2 -C -I eth0 -Y -u ${USER} -p ${PASSWORD} -U ${INTERVAL} -S; cat -"]