FROM postgres:13

RUN apt-get update 
RUN apt-get install --assume-yes --no-install-recommends --no-install-suggests \
  bison \
  build-essential \
  ca-certificates \
  flex \
  git \
  postgresql-plpython3-13 \
  postgresql-server-dev-13 

RUN git clone https://github.com/apache/incubator-age /age 
 
 # AGE 1.3.0
RUN cd /age && \
  git checkout 09e8cb4495f19badeb1aa20bf0990a874a120fbe && \
  make install 
