# Use the official image as a parent image
FROM mcr.microsoft.com/playwright:v1.25.0-focal

# Set the working directory
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Run tests
CMD ["npx", "playwright", "test"]
