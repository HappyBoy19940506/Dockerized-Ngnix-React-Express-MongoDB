# syntax=docker/dockerfile:1
# Use a lighter version of Node as a parent image
FROM node:12.18.1
# Set the working directory to /api
WORKDIR /api
ENV NODE_ENV=development
# copy package.json into the container at /api
ENV PATH ./node_modules/.bin:$PATH
COPY ["package.json","package-lock.json*", "./"]
# install dependencies
RUN npm install --development
# Copy the current directory contents into the container at /api
COPY . .
# Make port 9000 available to the world outside this container
EXPOSE 9000
# Run the app when the container launches
CMD ["npm", "start"]