From python:alpine
RUN cd /home 

RUN apk add build-base

RUN mkdir -p /home/loadBalancer/in
RUN mkdir /home/loadBalancer/out
WORKDIR /home/loadBalancer
RUN pwd
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY ./ .

