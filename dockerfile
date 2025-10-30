# Use Node LTS (or a slim image). Adjust tag if needed.
FROM node:24-alpine

WORKDIR /usr/src/app

# Copy package manifest first to leverage Docker cache
COPY package.json package-lock.json* ./

# Install production deps (no dev deps)
RUN npm ci --only=production || npm install --production

COPY . .

EXPOSE 3000

CMD ["node", "app.js"]
