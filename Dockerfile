#Use an official Python runtime as a parent image
FROM node:latest

# run as non-root user inside the docker container

# Create an app directory (in the Docker container)
RUN mkdir -p /usr/src/demo-server
WORKDIR /usr/src/demo-server

# Copy .npm settings and package.json into container
RUN npm config set registry https://registry.npm.taobao.org/

COPY package.json /usr/src/demo-server
# and install dependencies
RUN npm install

# Copy our source into container
COPY . /usr/src/demo-server

# If our server uses 1337 by default
# expose it from Docker container

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Run app.py when the container launches
CMD ["npm", "run", "dev"]
