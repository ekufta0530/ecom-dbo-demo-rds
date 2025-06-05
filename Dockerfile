FROM node:18-alpine
WORKDIR /app
RUN npm install -g npm@9
COPY package*.json .

# Copy your media.
COPY media ./media

# Copy your public files.
COPY public ./public

COPY .env .

# Run npm install.
RUN npm install

# Build assets.
RUN npm run build

EXPOSE 3000
CMD ["npm", "run", "start:debug"]

