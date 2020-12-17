FROM node:latest
WORKDIR /usr/src/app
COPY package.json yarn.lock ./
RUN yarn
COPY . ./
EXPOSE 3000
ENTRYPOINT ["bash", "/usr/src/app/entrypoint.sh"]


