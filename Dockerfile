FROM node:lts-alpine

WORKDIR /app
COPY package.json .
RUN npm install --only=prod
COPY . .

CMD ["npm", "run", "cluster"]

EXPOSE 8000