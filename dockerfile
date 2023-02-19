#dockerfile
# Base image
FROM alpine:latest

# installes required packages for our script
RUN	apk add --no-cache \
  bash \
  ca-certificates \
  curl \
  jq

# Copies the code file  repository to the filesystem
COPY jiratogit.sh /jiratogit.sh

# change permission to execute the script and
RUN chmod +x /jiratogit.sh

# file to execute when the docker container starts up
JIRATOGIT ["/jiratogit.sh"]