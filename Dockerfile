FROM ubuntu

RUN apt-get update
RUN apt-get install -y iputils-ping vim net-tools dstat
COPY monFichierDeConf /etc/fichier.conf
ENTRYPOINT ["/bin/bash"]