FROM golang:1.21-bookworm AS dev

ENV GO111MODULE=on

RUN apt update && apt install -y vim

WORKDIR /go/src

RUN go install github.com/cweill/gotests/gotests@v1.6.0 && \
    go install github.com/fatih/gomodifytags@v1.16.0 && \
    go install github.com/josharian/impl@v1.1.0 && \
    go install github.com/haya14busa/goplay/cmd/goplay@v1.0.0 && \
    go install github.com/go-delve/delve/cmd/dlv@latest && \
    go install honnef.co/go/tools/cmd/staticcheck@latest && \
    go install golang.org/x/tools/gopls@latest && \
    go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.55.2 && \
    go install mvdan.cc/gofumpt@latest

# COPY go.mod go.sum ./
# COPY go.mod ./
# RUN go mod download

EXPOSE 8080
