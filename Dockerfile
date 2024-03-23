FROM node:17-alpine3.17

RUN mkdir -p /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

RUN npm install --no-audit

COPY . .

EXPOSE 3000

CMD [ "npm", "start"]