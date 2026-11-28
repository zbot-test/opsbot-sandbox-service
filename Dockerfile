FROM node:22-alpine
WORKDIR /app
COPY svc-20261128051640/package.json svc-20261128051640/package-lock.json ./
RUN npm ci --omit=dev
COPY index.js ./
CMD ["node", "index.js"]
