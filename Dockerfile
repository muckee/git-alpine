FROM alpine:latest

# Install dependencies
RUN apk update \
    && apk upgrade \
    && apk add --no-cache git

ENTRYPOINT ["/src"]
