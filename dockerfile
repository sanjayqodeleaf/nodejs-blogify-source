
FROM node:16


WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

RUN npm install dotenv --save


COPY . .

EXPOSE 8000

CMD [ "node", "app.js" ]
