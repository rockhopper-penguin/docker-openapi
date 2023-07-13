FROM node:18-alpine

WORKDIR /workspace

RUN npm install -g redoc-cli