FROM efaille/ubuntu
MAINTAINER Erick Faille "efaille@gmail.com"

RUN mkdir /goroot && mkdir /gopath && \
    curl https://storage.googleapis.com/golang/go1.9.2.linux-amd64.tar.gz | tar xvzf - -C /goroot --strip-components=1

ENV GOROOT /goroot
ENV GOPATH /gopath
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin

WORKDIR /data

CMD ["go", "version"]
