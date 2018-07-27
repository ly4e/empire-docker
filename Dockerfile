FROM ubuntu:latest

RUN apt-get update && apt-get install -qy wget curl git sudo apt-utils lsb-core python2.7 python-dev && apt-get clean

RUN git clone --depth=1 -b dev https://github.com/EmpireProject/Empire.git /opt/Empire
WORKDIR /opt/Empire/setup/
ENV STAGING_KEY=RANDOM
RUN ./install.sh
RUN rm -rf /opt/Empire/data/empire*
RUN /opt/Empire/setup/reset.sh

WORKDIR "/opt/Empire"

#RUN apt-get update && apt-get install -qy tcpdump net-tools byobu && apt-get clean

CMD ["python2.7", "empire"]
#CMD ["/bin/bash"]
