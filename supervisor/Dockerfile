FROM efaille/ubuntu
MAINTAINER Erick Faille "efaille@gmail.com"

# Update & Install
RUN apt-get update && apt-get install -y supervisor

# Configuration supervisord
RUN echo "[supervisord]" >> /etc/supervisor/supervisord.conf && \
    echo "nodaemon=true" >> /etc/supervisor/supervisord.conf

# Command to start
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
