FROM node:18

# Create app directory
WORKDIR /usr/assignment-4-api

# Install NEXT.js dependencies
COPY package.json /usr/assignment-4-api/

# Build NEXT.js project
RUN npm install

COPY . /usr/assignment-4-api/

# Build NEXT.js project
RUN npm run build

# Copy NEXT.js build artifacht to working directory
COPY . /usr/assignment-4-api/

# Expose port 3000
EXPOSE 3000

# Run container with this command
CMD [ "npm", "run", "start" ]
