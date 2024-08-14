
FROM node:14


WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

npm install dotenv --save


COPY . .

EXPOSE 3000

CMD [ "node", "app.js" ]
