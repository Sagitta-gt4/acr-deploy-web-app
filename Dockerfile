# Use the official Node.js image as the base image
FROM node:LTS

# Set the working directory
WORKDIR /app

COPY . .

# Install dependencies
RUN npm install

# Build the Next.js application
RUN npm run build

# Expose the port the app runs on
EXPOSE 3000

# Start the Next.js application
CMD ["npm", "start"]