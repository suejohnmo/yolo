FROM alpine:latest

LABEL maintainer="Susan Mwaura <susan.mwaura@gmail.com>"

RUN apk update && apk add nodejs nodejs-npm
COPY backend /backend
WORKDIR /backend
RUN npm install
EXPOSE 5000
CMD [ "npm", "start"] 