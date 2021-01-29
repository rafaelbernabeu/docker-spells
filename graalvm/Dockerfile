FROM ubuntu:20.04
LABEL maintainer="Rafael Bernabeu"

# --- GLOBAL CONFIG ---
RUN sed 's/main$/main universe/' -i /etc/apt/sources.list
RUN apt-get update && apt-get upgrade -y
RUN apt-get install gcc wget curl maven -y

RUN apt-get install zlib1g-dev libstdc++-9-dev -y

RUN mkdir /opt/tools
RUN cd /tmp && wget https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-21.0.0/graalvm-ce-java11-linux-amd64-21.0.0.tar.gz
RUN tar -xzf /tmp/graalvm-ce-java11-linux-amd64-21.0.0.tar.gz -C /opt/tools/ && rm /tmp/graalvm-ce-java11-linux-amd64-21.0.0.tar.gz

ENV JAVA_HOME /opt/tools/graalvm-ce-java11-21.0.0
ENV PATH /opt/tools/graalvm-ce-java11-21.0.0/bin:$PATH

RUN /opt/tools/graalvm-ce-java11-21.0.0/bin/gu install native-image

WORKDIR /opt/project