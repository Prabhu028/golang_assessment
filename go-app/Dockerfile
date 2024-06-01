FROM golang:1.22.3-alpine
LABEL author="Prabhusairam"
RUN addgroup -g 1000 botgroup && adduser -h "/apphome" -u 1000 -G botgroup -s /bin/bash -D bot
WORKDIR /app
COPY /go.mod ./
RUN go mod download
COPY . .
RUN chown -R bot:botgroup /app
USER bot
RUN go build -o main .
EXPOSE 8080
CMD ["./main"]