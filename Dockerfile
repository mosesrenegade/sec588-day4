FROM node:8-jessie

WORKDIR /src
ADD . .
RUN npm install

EXPOSE 3000
CMD ["npm", "start"]

