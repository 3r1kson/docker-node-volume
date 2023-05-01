FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

# can be used if don't want to insert this info when creating the container
# VOLUME [ "/app/node_modules" ]

# CMD ["node", "server.js"]
CMD ["npm", "start"]