# Version: 0.0.1
From ubuntu:16.04
MAINTAINER plutoese "glen.zhang7@gmail.com" 
RUN apt-get update 
RUN apt-get install -y python3
RUN apt-get install -y python2.7
RUN update-alternatives --install /usr/bin/python python /usr/bin/python2.7 2
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.5 1
RUN apt-get install -y curl
RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
RUN python get-pip.py
RUN apt-get install -y --allow-unauthenticated r-base r-base-dev
RUN apt-get install -y npm nodejs-legacy  
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install ipython
RUN pip3 install notebook
RUN npm install -g configurable-http-proxy
RUN pip3 install jupyterhub
EXPOSE 8000 
