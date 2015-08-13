FROM airdock/oracle-jdk:1.7

MAINTAINER Florian Kasper <florian.kasper@corscience.de>


RUN wget  https://www.atlassian.com/software/stash/downloads/binary/atlassian-stash-3.11.1-x64.bin; \
  chmod +x atlassian-stash-3.11.1-x64.bin


ADD varfile /varfile

RUN ./atlassian-stash-3.11.1-x64.bin -q -varfile /varfile


RUN rm /varfile && rm atlassian-stash-3.11.1-x64.bin

VOLUME /var/atlassian/application-data/stash



#ENTRYPOINT /opt/atlassian/stash/latest/bin/start_stash.sh
COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
#CMD /opt/atlassian/stash/latest/bin/start-stash.sh


