FROM efaille/ubuntu
MAINTAINER Erick Faille "efaille@gmail.com"

RUN mkdir /goroot && mkdir /gopath && \
    curl https://dl.google.com/go/go1.11.2.linux-amd64.tar.gz | tar xvzf - -C /goroot --strip-components=1

ENV GOROOT /goroot
ENV GOPATH /gopath
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin

WORKDIR /data

CMD ["go", "version"]
