FROM golang:1.10 AS build-env

WORKDIR /go/src/app
COPY ./go/src/app .
RUN go install -v .
RUN go build -o goapp

FROM scratch
WORKDIR /app
COPY --from=build-env /go/src/app/goapp /app/goapp
ENTRYPOINT ["./goapp"]
