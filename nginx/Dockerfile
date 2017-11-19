FROM efaille/ubuntu
MAINTAINER Erick Faille "efaille@gmail.com"

# Update & Install & Clean
RUN add-apt-repository -y ppa:nginx/stable && apt-get update && \
    apt-get install -y nginx && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Set nginx config
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
