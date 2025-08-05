FROM ghcr.io/efaille/ubuntu

ENV MONGO_MAJOR=8.0
ENV MONGO_VERSION=8.0.12

RUN apt-get update && apt-get install -y \
    gnupg \
    curl \
    --no-install-recommends && \
    curl -fsSL https://www.mongodb.org/static/pgp/server-${MONGO_MAJOR}.asc | gpg --dearmor > /usr/share/keyrings/mongodb-server-${MONGO_MAJOR}.gpg && \
    echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-${MONGO_MAJOR}.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/${MONGO_MAJOR} multiverse" | tee /etc/apt/sources.list.d/mongodb-org-${MONGO_MAJOR}.list && \
    apt-get update

RUN apt-get install -y mongodb-org=${MONGO_VERSION} && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

EXPOSE 27017 28017

CMD mongod
