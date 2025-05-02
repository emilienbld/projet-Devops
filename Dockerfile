FROM nginx:latest
# Installation des paquets
RUN apt-get update && apt-get install -y \
    net-tools \
    iproute2 \
    iputils-ping \
    && apt-get clean
# Copie la template HTML
COPY . /usr/share/nginx/html
