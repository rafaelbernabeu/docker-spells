FROM ubuntu:20.04
MAINTAINER Rafael Bernabeu "rbbernabeu@gmail.com"

# --- GLOBAL CONFIG ---
RUN sed 's/main$/main universe/' -i /etc/apt/sources.list
RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y firefox

CMD /bin/bash
