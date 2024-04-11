# Use the official image of Node.js as the base image
FROM node:latest

# Set up a working directory
WORKDIR /app

# Copy package.json and package-lock.json files to the mirror
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy all other source code into the image
COPY . .

# Expose the port used by the application
EXPOSE 3000

# Define the commands that are executed when the container starts
CMD ["node", "calculator.js"]