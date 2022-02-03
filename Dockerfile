FROM node:16.13.1 AS builder

WORKDIR /app

COPY package.json index.html favicon.svg /app/
COPY src /app/src

RUN npm install\
  && npm run build

FROM nginx
COPY ./app.conf /etc/nginx/conf.d/.
COPY --from=builder /app/dist/ /usr/share/nginx/html/
COPY --from=builder /app/src /usr/share/nginx/html/src
COPY --from=builder /app/node_modules /usr/share/nginx/html/node_modules
