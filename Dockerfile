FROM golang:1.20.7 as builder

WORKDIR /build

COPY * /build

RUN ls /build

RUN  go build -o main .

FROM scratch

COPY --from=builder /build/main /main