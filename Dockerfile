# Use an official Node.js runtime as the base image
FROM node:18-alpine AS builder

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json first to leverage Docker cache
COPY package.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Build the Nuxt 3 application
RUN npm run build

# Use a minimal base image for running the app
FROM node:18-alpine AS runner

# Set the working directory
WORKDIR /app

# Copy built files from the builder stage
COPY --from=builder /app/.output .

# Expose the port Nuxt runs on
EXPOSE 3000

# Set the command to start the Nuxt application
CMD ["node", "server/index.mjs"]
