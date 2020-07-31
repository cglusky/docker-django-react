# pull official base image
FROM node:lts-alpine

# set work directory
WORKDIR /srv/app/

# add to $PATH
ENV PATH /srv/app/node_modules/.bin:$PATH

# install app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install
RUN npm install react-scripts@3.4.1 -g 

# add app
COPY . ./

