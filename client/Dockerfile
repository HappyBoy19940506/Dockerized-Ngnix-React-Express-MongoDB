# syntax=docker/dockerfile:1

# pull the official base image,choose a stable version, alias as build
FROM node:12.18.1 AS build

# running in a development environment by default
ENV NODE_ENV=development

# set working direction
WORKDIR /client

# Adding node_modules/bin to the PATH environment variable  - make sure node exectable command can run smoothly
ENV PATH ./node_modules/.bin:$PATH


# copy application dependencies
COPY ["package.json","package-lock.json*", "./"]

# install application dependencies
RUN npm install --development

# copy app source code
COPY . .

EXPOSE 3000

# start app , see package.json inside for details
CMD ["npm", "start"]

