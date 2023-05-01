FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

ARG DEFAULT_PORT=80

ENV PORT $DEFAULT_PORT

EXPOSE $PORT

# can be used if don't want to insert this info when creating the container
# VOLUME [ "/app/node_modules" ]

VOLUME [ "/app/temp" ]

# CMD ["node", "server.js"]
CMD ["npm", "start"]