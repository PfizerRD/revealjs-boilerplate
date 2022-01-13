FROM node:16.13.1

WORKDIR /app

COPY package.json /app/

RUN npm install

COPY index.html main.js favicon.svg /app/
COPY public ./public

RUN npm run build\
    && ln -s /app/node_modules dist

ENTRYPOINT ["npx", "vite", "preview", "--host"]
