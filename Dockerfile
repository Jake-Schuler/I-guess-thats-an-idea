FROM node:lts AS runtime
LABEL org.opencontainers.image.source="https://github.com/jake-schuler/i-guess-thats-an-idea"

WORKDIR /app

COPY . .

RUN npm install
RUN npm run build

ENV HOST=0.0.0.0
ENV PORT=4321
EXPOSE 4321
CMD node ./dist/server/entry.mjs
