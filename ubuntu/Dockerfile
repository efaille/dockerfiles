FROM ubuntu:14.04
MAINTAINER Erick Faille "efaille@gmail.com"

# Update & Install
RUN apt-get update && locale-gen en_CA.UTF-8 && apt-get install -y \
    nano wget curl git software-properties-common
    
CMD ["lsb_release", "-a"]
