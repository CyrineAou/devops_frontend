FROM node:20 as build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm install -g @angular/cli
RUN ng build
EXPOSE 80