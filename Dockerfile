FROM node:22-alpine


RUN mkdir -p /home/node/app
# Create app directory
WORKDIR /home/node/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm ci

# Bundle app source
COPY . .

# Build the TypeScript files
RUN npm run build

# Expose port 8080
EXPOSE 3000

# Start the app
CMD npm run start
