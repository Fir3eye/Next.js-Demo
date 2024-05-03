# Use a newer Node.js version that satisfies Next.js requirements
FROM node:18-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000
CMD ["npm", "start"]

