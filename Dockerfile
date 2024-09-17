# Use the official Node.js image as the base
FROM node:16

# Set the working directory in the container
WORKDIR /myapp

# Copy the package.json and package-lock.json (if available) to the container
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Run tests
CMD ["npm", "test"]
