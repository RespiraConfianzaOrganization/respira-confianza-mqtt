FROM node:lts-alpine

WORKDIR /app

ADD package.json /app/package.json
ADD yarn.lock /app/yarn.lock
RUN yarn

COPY src /app/src

CMD ["yarn", "start"]
