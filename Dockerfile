# Version: 0.0.1
From ubuntu:16.04
MAINTAINER plutoese "glen.zhang7@gmail.com"
RUN apt-get update && apt-get install -y nginx
RUN echo 'Hi, I am in your contain' > /usr/share/nginx/html/index.html
EXPOSE 80
