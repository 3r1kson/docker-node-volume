FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

# can be used if don't want to insert this info when creating the container
# VOLUME [ "/app/node_modules" ]

VOLUME [ "/app/temp" ]

# CMD ["node", "server.js"]
CMD ["npm", "start"]