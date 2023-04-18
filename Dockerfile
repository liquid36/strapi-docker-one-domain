FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

EXPOSE 1337

RUN npm run build

CMD ["npm", "run", "docker"]
