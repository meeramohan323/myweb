# Dockerfile

# Base image
FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy app source code
COPY . .

# Expose the port and run the app
EXPOSE 8080
CMD ["node", "src/index.js"]
