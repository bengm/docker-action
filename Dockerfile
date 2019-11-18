# Container image that runs your code
FROM node:lts-slim

WORKDIR /usr/action

# Set npm to use root for global installs, then install dependencies
RUN npm -g config set user root
RUN npm install -g pa11y

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]