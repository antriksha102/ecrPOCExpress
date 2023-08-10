# Use the official Node.js 18 Alpine image as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy all project files to the working directory
COPY . .

# Expose the port the application will run on
EXPOSE 3000

# Command to start the application
CMD ["npm", "start"]
