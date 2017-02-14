FROM danny50610/ubuntu-gosu-base

RUN apt-get update && apt-get -y --no-install-recommends install \
    default-jdk \
    wget \
    unzip
    
RUN cd ~ && \
    wget https://services.gradle.org/distributions/gradle-3.3-bin.zip && \
    mkdir /opt/gradle && \
    unzip -d /opt/gradle gradle-3.3-bin.zip

ENV PATH "$PATH:/opt/gradle/gradle-3.3/bin"

COPY preDownloadGrade.sh /root/preDownloadGrade.sh

RUN cd /home/user && \
    ./preDownloadGrade.sh 3.1 && \
    ./preDownloadGrade.sh 3.2 && \
    ./preDownloadGrade.sh 3.3
    
CMD ["/bin/bash"]

