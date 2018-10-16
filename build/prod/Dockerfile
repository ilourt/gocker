FROM golang:1.11 AS build

USER gopher

# Copy source file
COPY . /home/go

# Build bin
RUN go mod init $MODULE
RUN go build -o $BIN_NAME ./*.go

FROM scratch
COPY --from=build /home/go/$BIN_NAME /$BIN_NAME
ENTRYPOINT [`/$BIN_NAME`]