FROM node:8

# app directory
WORKDIR /usr/src/app

# install npm modules
COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD ["npm", "start"]