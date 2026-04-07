FROM node:20-alpine

WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy everything else
COPY . .

EXPOSE 3000

CMD ["npm", "start"]
