FROM nginx
RUN apt-get update && apt-get install -y \
    net-tools \
    iproute2 \
    iputils-ping \
    && apt-get clean
COPY . /usr/share/nginx/html
