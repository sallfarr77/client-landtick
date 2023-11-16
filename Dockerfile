FROM node:lts

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 5173

ENV NODE_ENV=production

CMD ["npm", "run", "host", "--", "--host", "0.0.0.0"]
