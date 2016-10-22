FROM efaille/ubuntu
MAINTAINER Erick Faille "efaille@gmail.com"

# Install deps
RUN apt-get install -y make gcc g++ python libssl-dev

# Install iojs
RUN \
  cd /usr/src && \
  wget https://iojs.org/dist/v2.3.2/iojs-v2.3.2.tar.gz && \
  tar zxf iojs-v2.3.2.tar.gz && \
  cd iojs-v2.3.2 && \
  ./configure && \
  make && \
  make install && \
  echo -e '\n# Npm modules bin dir\nexport PATH="node_modules/.bin:$PATH"' >> /root/.bashrc

WORKDIR /data
CMD ["bash"]
