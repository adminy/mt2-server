FROM freebsd:11.2-RELEASE

RUN pkg install g++ makedepend gmake \
    mysql57-server mysql57-client boost-all \
    devil # cryptopp openssl removed: googletest 
COPY source.tar.gz /home
RUN cd /home && tar -xf source.tar.gz && rm -rf source.tar.gz

RUN gmake -j6