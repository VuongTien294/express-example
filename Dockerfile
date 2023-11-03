# Use an official Node.js runtime as a parent image
FROM node:20

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application source code
COPY . .

# Expose a port that the application will run on (e.g., 3000)
EXPOSE 3000

# # Define the command to start your Node.js application
CMD ["node", "server.js"]