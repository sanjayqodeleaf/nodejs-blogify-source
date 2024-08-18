
FROM node:16


WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

RUN npm install dotenv --save

RUN npm install mongodb


COPY . .

EXPOSE 8000

CMD [ "node", "app.js" ]
