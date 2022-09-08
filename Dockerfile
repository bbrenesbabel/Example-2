FROM node:latest as node

WORKDIR /app

COPY . .

RUN npm install

COPY . .

EXPOSE 4200

RUN npm run build

CMD [ "start", "ng serve" ]

#ENTRYPOINT ["/bin/bash"]


