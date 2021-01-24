FROM node:lts

# Install vue-cli
RUN yarn global add @vue/cli@4.5.11

WORKDIR /var/www
