 
FROM node:10.17.0-jessie

RUN mkdir /app

WORKDIR /app

RUN npm install -g yarn


COPY ./package.json /app/package.json
COPY ./server.js /app/server.js

RUN yarn install 

EXPOSE 3000

CMD yarn start