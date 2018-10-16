FROM golang:1.11

RUN useradd -m gopher

COPY --chown=gopher:gopher ./build/dev/entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

RUN go get github.com/derekparker/delve/cmd/dlv
RUN go get github.com/cortesi/modd/cmd/modd

USER gopher
WORKDIR /home/gopher/project

ENTRYPOINT ["/docker-entrypoint.sh"]