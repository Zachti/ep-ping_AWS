FROM node:14.0

ENV REDIS_SERVICE_HOST "redis"
ENV REDIS_SERVICE_PORT "6379"

WORKDIR /opt/tikal/

COPY . .

RUN npm install

CMD ["npm start"]

