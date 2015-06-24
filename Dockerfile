# OBDSim

FROM debian

MAINTAINER Yury Kavaliou <yury_kavaliou@epam.com>

RUN apt-get update \
    && apt-get install -y gpsd \
    subversion \
    cmake \
    build-essential

RUN cd ~/ \
    && svn co svn://svn.icculus.org/obdgpslogger/trunk obdgpslogger \
    && cd obdgpslogger \
    && mkdir build \
    && cd build \
    && cmake .. \
    && make \
    && make install

ENTRYPOINT ["obdsim"]
CMD [""]