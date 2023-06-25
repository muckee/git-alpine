FROM alpine:3.18

# Update the package manager
RUN apk update

# Install dependencies
RUN apk add --no-cache \
                  openssh-client \
                  git

# Create filesystem user
RUN addgroup -S 1000 && \
    adduser -S 1000 -G 1000

# Create home directory for filesystem user
RUN mkdir /home/1000/.ssh && \
    chown -R 1000:1000 /home/1000

# Set home directory
ENV HOME /home/1000

# Login as filesystem user
USER 1000
