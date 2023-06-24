FROM alpine:latest

# Install git, node & npm
RUN apk update && apk add --no-cache \
                  openssh-client \
                  git
