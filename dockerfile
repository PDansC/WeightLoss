FROM node:12.13.0-alpine

WORKDIR /usr/src

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080
CMD ["npm" , "run" , "dev"]