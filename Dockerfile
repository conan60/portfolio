FROM node:18.19.1-alpine

RUN mkdir -p /home/node/app

WORKDIR /home/node/app

COPY ./package.json ./

# RUN npm install

COPY . .

EXPOSE 3000

CMD [ "node", "./src/index.js"]