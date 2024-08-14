# Use an official Node runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

npm install dotenv --save

# Copy the rest of your app's source code from your host to your image filesystem.
COPY . .

# Inform Docker that the container is listening on the specified port at runtime.
EXPOSE 3000

# Define the command to run your app using CMD which defines your runtime
CMD [ "node", "app.js" ]
