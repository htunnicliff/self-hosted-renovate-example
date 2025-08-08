FROM node:22@sha256:3218f0d1b9e4b63def322e9ae362d581fbeac1ef21b51fc502ef91386667ce92

WORKDIR /app

RUN [ "npm", "install", "-g", "corepack@latest" ]

COPY package.json pnpm-lock.yaml ./

RUN pnpm install --frozen-lockfile

COPY . .

CMD [ "node", "index.js" ]
