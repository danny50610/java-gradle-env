FROM ubuntu-gosu-base

RUN apt-get update && apt-get -y --no-install-recommends install \
    default-jdk \
    wget \
    unzip

RUN cd ~ && \
    wget https://services.gradle.org/distributions/gradle-3.3-bin.zip && \
    mkdir /opt/gradle && \
    unzip -d /opt/gradle gradle-3.3-bin.zip

ENV PATH "$PATH:/opt/gradle/gradle-3.3/bin"

CMD ["/bin/bash"]

