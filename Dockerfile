#FROM anuvaadio/anuvaad-rest-base:1
#FROM sivaprakash123/anuvaad-rest-base:1
FROM node:10-alpine
COPY / /app
WORKDIR /app
RUN apk update && apk add git
RUN npm install && npm install -g express-gateway
CMD node api-gw.js
#EXPOSE 8081
