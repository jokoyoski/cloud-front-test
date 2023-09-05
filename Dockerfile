# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the entire project to the container
COPY . .

# Build the React app (you may need to adjust this command)
RUN npm run build

# Expose the port that the app will run on (typically 3000)
EXPOSE 3000

# Define the command to run your React app
CMD ["npm", "start"]
