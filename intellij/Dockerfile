FROM rbbernabeu/jdk11
LABEL maintainer="Rafael Bernabeu"

RUN apt-get update && apt-get upgrade -y
RUN apt-get install wget -y

RUN mkdir -p /home/developer/tools/
RUN cd /tmp && wget https://download.jetbrains.com/idea/ideaIU-2020.3.1.tar.gz
RUN tar -xzf /tmp/ideaIU-2020.3.1.tar.gz -C /home/developer/tools/ && rm /tmp/ideaIU-2020.3.1.tar.gz

RUN apt-get install git maven -y

CMD /home/developer/tools/idea-IU-203.6682.168/bin/idea.sh