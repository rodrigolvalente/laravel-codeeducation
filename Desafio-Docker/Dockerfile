FROM golang:alpine as builder

WORKDIR /src/codeeducation
COPY codeeducation.go .
RUN go build .

FROM scratch

COPY --from=builder /src/codeeducation/codeeducation /

CMD ["/codeeducation"]