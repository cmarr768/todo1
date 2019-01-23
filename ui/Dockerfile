FROM node:8 as node

# app directory
WORKDIR /usr/src/app

# add `/usr/src/app/node_modules/.bin` to $PATH
ENV PATH /usr/src/app/node_modules/.bin:$PATH

# install npm modules
COPY package*.json ./

RUN npm install
# RUN npm install -g @angular/cli

COPY . .

RUN npm run build -- --output-path=./dist/out

#set up nginx
FROM nginx:1.15.8-alpine

COPY --from=node /usr/src/app/dist/out /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf

# EXPOSE 8080

# CMD ng serve --host 0.0.0.0

