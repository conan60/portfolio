FROM node:17.9.1-alpine

RUN mkdir -p /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

RUN npm install --verbose --no-audit

COPY . .

EXPOSE 3000

CMD [ "npm", "start"]