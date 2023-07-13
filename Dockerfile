FROM node:18-alpine
WORKDIR /src
COPY . .
ENV NODE_ENV=production
RUN npm install
EXPOSE 3001
CMD ["npm", "start"]