FROM node:latest as node

WORKDIR /app

COPY . .

RUN npm install

COPY . .

EXPOSE 4200

RUN npm run build

ENTRYPOINT ["docker-entrypoint.sh"]


