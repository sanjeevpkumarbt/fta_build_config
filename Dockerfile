FROM node:latest
WORKDIR /usr/app
COPY ./mysite/package.json .
RUN npm install 
COPY ./mysite/ .
EXPOSE 8081
