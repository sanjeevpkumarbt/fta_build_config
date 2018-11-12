FROM node:latest
RUN mkdir /keys
COPY ./node_keys/ /keys
WORKDIR /usr/app
COPY ./mysite/package.json .
RUN npm install 
COPY ./mysite/ .
EXPOSE 8081
