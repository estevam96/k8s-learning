# Stage: build
FROM node:20-alpine AS build
WORKDIR /usr/src/app
COPY ./app/package*.json ./
RUN npm install -ci

# Stage: app
FROM node:20-alpine AS app
WORKDIR /usr/src/app
RUN apk add --no-cache dumb-init
COPY --from=build /usr/src/app/node_modules ./node_modules
COPY ./app .
EXPOSE 3000
USER node
CMD ["dumb-init", "node", "server.js"]
