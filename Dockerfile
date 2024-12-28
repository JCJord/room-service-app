# Step 1: Base image
FROM node:18 AS build

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy the application code
COPY . .

# Install Angular CLI locally (if not installed globally)
RUN npm install -g @angular/cli

# Step 2: Development server
EXPOSE 4200

# Start the Angular application
CMD ["npm", "run", "start", "--", "--host", "0.0.0.0"]