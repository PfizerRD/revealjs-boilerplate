FROM node:16.13.1

WORKDIR /app

COPY package.json index.html main.js favicon.svg /app/
COPY public ./public

RUN npm install\
    && npm run build\
    && ln -s /app/node_modules dist

ENTRYPOINT ["npx", "vite", "preview", "--host"]
