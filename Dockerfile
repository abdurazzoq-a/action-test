FROM node:22-alpine

WORKDIR /app

COPY package*.json .

RUN npm ci

COPY . .

EXPOSE 9000

RUN npm run build

