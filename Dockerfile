FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS
ENV MONGODB_USERNAME gh-actions
ENV MONGODB_PASSWORD BRKVsbxtpeqe4hA9

WORKDIR /app

COPY package*.json .

RUN npm install

COPY ../../../../Downloads/01 .

CMD ["npm", "start"]