# Stage 1: Build the application
# Use a slim Node.js base image
FROM node:20-alpine AS build

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application source code
COPY . .

# Stage 2: Create a smaller, production-ready image
# Use node:20-alpine for the final image to keep it small
FROM node:20-alpine

# Set the working directory
WORKDIR /app

# Copy only the necessary files from the build stage
COPY --from=build /app/node_modules ./node_modules
COPY --from=build /app/server.js ./server.js

# Expose the port the app runs on
EXPOSE 8080

# Define the command to run the app
CMD ["node", "server.js"]