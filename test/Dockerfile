FROM efaille/ubuntu
MAINTAINER Erick Faille "efaille@gmail.com"

# Test for check file
RUN mkdir /data && echo "hello world" > /data/test

# Tests
ADD run.sh /run.sh
RUN chmod +x run.sh
CMD /run.sh
