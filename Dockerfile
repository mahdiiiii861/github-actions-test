# Use Node.js base image
FROM node:20

# Set working directory
WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the whole Angular project
COPY . .

# Expose Angular dev server port
EXPOSE 4200

# Run Angular dev server
CMD ["npm", "run", "start", "--", "--host", "0.0.0.0", "--poll", "2000"]
