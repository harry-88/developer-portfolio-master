FROM node:10-alpine

WORKDIR /portfolio

COPY package.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 3002

CMD ["npm", "run", "start"]
