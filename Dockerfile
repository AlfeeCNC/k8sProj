FROM node:latest
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
RUN npm install -g sequelize-cli
COPY . .
EXPOSE 3000
COPY ./docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]