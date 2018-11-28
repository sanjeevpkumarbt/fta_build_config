FROM node:latest
RUN mkdir /keys
COPY ./node_keys/ /keys
COPY ./script/init.sh /
WORKDIR /usr/app
COPY ./mysite/package.json .
RUN npm install 
COPY ./mysite/ .
EXPOSE 8081
