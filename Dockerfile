FROM node:16.13.1

WORKDIR /app

COPY package.json index.html favicon.svg /app/
COPY src/ /app/src

RUN npm install\
  && npm install -g vite

ENTRYPOINT ["vite", "--host"]
