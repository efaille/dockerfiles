#FROM golang:1.15.3-alpine3.12 as builder
#FROM ghcr.io/efaille/golang as builder
FROM ghcr.io/efaille/golang
#ENV GOPATH=/data
ENV PATH=/root/go/bin:${PATH}
RUN go install github.com/caddyserver/xcaddy/cmd/xcaddy@latest
RUN xcaddy build

CMD ls

#FROM ghcr.io/efaille/alpine

#COPY --from=builder /go/caddy /bin/caddy
