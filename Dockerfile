FROM node:18-alpine

WORKDIR /app

COPY . .

RUN npm install -g pnpm

RUN pnpm install

COPY . /

RUN pnpm build

EXPOSE 3000

CMD [ "pnpm","start" ]