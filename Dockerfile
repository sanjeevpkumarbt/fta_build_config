FROM node:latest
WORKDIR /usr/app
COPY /home/kumarsp2/dockerfiles/mysite/package.json .
RUN npm install 
COPY /home/kumarsp2/dockerfiles/mysite/ .
EXPOSE 8081
