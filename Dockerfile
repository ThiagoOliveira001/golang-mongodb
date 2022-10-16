FROM golang:1.19

WORKDIR /go/src
ENV PATH="/go/bin:${PATH}"

RUN apt-get update && \
    apt-get install build-essential -y
RUN go mod init api-mock
RUN go get go.mongodb.org/mongo-driver
RUN go get go.mongodb.org/mongo-driver/x/mongo/driver/ocsp@v1.10.3
RUN go get go.mongodb.org/mongo-driver/mongo/options@v1.10.3
RUN go get go.mongodb.org/mongo-driver/x/mongo/driver/auth@v1.10.3
RUN go get go.mongodb.org/mongo-driver/mongo@v1.10.3
RUN go get go.mongodb.org/mongo-driver/x/mongo/driver/topology@v1.10.3

CMD [ "tail", "-f", "/dev/null" ]
