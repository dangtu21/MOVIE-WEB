## build stage ##
FROM node:18.19.1-alpine
WORKDIR /app
COPY ..
RUN npm install -g pnpm -DskipTests=true && pnpm install -DskipTests=true  && pnpm run build && 
EXPOSE 8080

ENTRYPOIN pnpm run start
