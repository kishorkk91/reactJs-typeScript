FROM node:14-alpine3.14

# Let's create a directory to hold the application code inside the image, this will be the working directory for your application.
# This can be any user defined name
WORKDIR /app



#RUN npm install typescript

# Copy the application to the /app directory
COPY package*.json /app/
COPY tsconfig*.json /app/

COPY . /app

# Optional copy -> ./ is same as COPY package*.json /app/ 
# COPY package.json ./

# Install all Packages
RUN npm install

# TypeScript
#RUN npm run tsc


# Set Docker port
EXPOSE 3000

CMD [ "npm", "start" ]