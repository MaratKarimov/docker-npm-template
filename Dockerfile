# Stage 1 - the build process
FROM maratk/alpine-node-git as build-deps
# Create app directory
WORKDIR /usr/src/app
# Install app dependencies
COPY package*.json ./
# 
RUN npm install
# Bundle app source
COPY . .
# 
EXPOSE 8000
# run it
CMD [ "npm", "start" ]