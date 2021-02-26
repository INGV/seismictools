FROM debian:stretch

LABEL maintainer="Valentino Lauciani <valentino.lauciani@ingv.it>"

ENV DEBIAN_FRONTEND=noninteractive
ENV INITRD No
ENV FAKE_CHROOT 1

# install packages
RUN apt-get update \
    && apt-get dist-upgrade -y --no-install-recommends \
    && apt-get install -y \
        vim \
        git \
        telnet \
        dnsutils \
        wget \
        curl \
        default-jre \
	make \
	gcc \
        procps

# Set .bashrc
RUN echo "" >> /root/.bashrc \
     && echo "##################################" >> /root/.bashrc \
     && echo "alias ll='ls -l --color'" >> /root/.bashrc \
     && echo "" >> /root/.bashrc \
     && echo "export LC_ALL=\"C\"" >> /root/.bashrc \
     && echo "" >> /root/.bashrc

# Set 'root' pwd
RUN echo root:toor | chpasswd

# Get and install rdseed
WORKDIR /opt
COPY soft/rdseedv5.3.1.tar.gz /opt/
RUN tar xvzf rdseedv5.3.1.tar.gz \
    && rm /opt/rdseedv5.3.1.tar.gz \
    && cd /usr/bin \
    && ln -s /opt/rdseedv5.3.1/rdseed.rh6.linux_64 rdseed

# Install qlib
WORKDIR /opt
COPY soft/qlib2.2019.365.tar.gz /opt/
RUN tar xvzf qlib2.2019.365.tar.gz \
    && rm qlib2.2019.365.tar.gz \
    && cd qlib2 \
    && sed -e 's|ROOTDIR\s=.*|ROOTDIR = /usr/local|' -e 's|LEAPSECONDS\s=.*|LEAPSECONDS = /usr/local/etc/leapseconds|' Makefile > Makefile.new \
    && mv Makefile Makefile.original \
    && mv Makefile.new Makefile \
    && mkdir /usr/local/share/man/man3/ \
    && mkdir /usr/local/lib64 \
    && make clean \
    && make all64 \
    && make install64 \
    && rm -fr /opt/qlib2

# Install qmerge
WORKDIR /opt
COPY soft/qmerge.2014.329.tar.gz /opt/
RUN tar xvzf qmerge.2014.329.tar.gz \
    && rm qmerge.2014.329.tar.gz \
    && cd qmerge \
    && sed -e 's|^QLIB2.*|QLIB2 = /usr/local/lib64/libqlib2.a|' Makefile > Makefile.new \
    && mv Makefile Makefile.original \
    && mv Makefile.new Makefile \
    && make clean \
    && make install \
    && rm -fr /opt/qmerge

# Get last leapseconds
WORKDIR /usr/local/etc
RUN wget -O leapseconds http://www.ncedc.org/ftp/pub/programs/leapseconds

# Install StationXML-SEED-Comnverter
COPY soft/stationxml-seed-converter-2.1.0.jar /opt/
