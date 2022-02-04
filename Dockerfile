FROM node:16.13.1 AS builder

WORKDIR /app

COPY package.json index.html favicon.svg /app/
COPY src /app/src

RUN npm install\
  && npm run build

FROM nginx

WORKDIR /usr/share/nginx/html

COPY ./app.conf /etc/nginx/conf.d/.
COPY index.html /usr/share/nginx/html/index.html
COPY src /usr/share/nginx/html/src
COPY --from=builder /app/node_modules /usr/share/nginx/html/node_modules
