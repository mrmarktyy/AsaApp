FROM golang:1.7

RUN mkdir /app

ENV BEEGO_RUNMODE prd

ADD asa /app/asa
ADD views /app/views/
ADD conf /app/conf

WORKDIR /app

EXPOSE 8080

ENTRYPOINT /app/asa
