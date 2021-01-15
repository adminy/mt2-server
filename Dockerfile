FROM freebsd:11.2-RELEASE

RUN pkg install g++ gmake \
    mysql57-server mysql57-client boost-all \
    devil # cryptopp openssl removed: googletest makedepend
COPY source.tar.gz /home
RUN cd /home && tar -xf source.tar.gz && rm -rf source.tar.gz

# Run make with 6 core cpu
RUN gmake -j6

# apt install -y libdevil-dev make libboost-all-dev libcrypto++-dev python-pycryptopp

