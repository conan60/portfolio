FROM node:18.16.0-alpine3.17

RUN mkdir -p /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 3000

CMD [ "npm", "start"]