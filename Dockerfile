FROM node:10-alpine
COPY / /app
WORKDIR /app
RUN apk update && apk add git
RUN npm install
CMD node api-gw.js
#EXPOSE 8081
