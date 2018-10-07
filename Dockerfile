FROM ubuntu:16.04

RUN apt-get update && apt-get install -y wget unzip
RUN wget http://sourceforge.net/projects/nmon/files/njmon_binaries_v10b.zip
RUN unzip njmon_binaries_v10b.zip -d /njmon

FROM ubuntu:16.04
COPY --from=0 /njmon/njmon_linux_x86_ubuntu18_v10 /usr/bin/njmon
RUN chmod +x /usr/bin/njmon

ADD entrypoint.sh /
WORKDIR /njmon-data

ENTRYPOINT ["/entrypoint.sh"]
