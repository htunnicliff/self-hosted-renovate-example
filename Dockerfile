FROM node:20

WORKDIR /app

RUN [ "npm", "install", "-g", "corepack@latest" ]

COPY package.json pnpm-lock.yaml ./

RUN pnpm install --frozen-lockfile

COPY . .

CMD [ "node", "index.js" ]
