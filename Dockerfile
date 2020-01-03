FROM node:8-jessie

WORKDIR /src
ADD . .
RUN mv docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh 
RUN chmod 777 /usr/local/bin/docker-entrypoint.sh && ln -s /usr/local/bin/docker-entrypoint.sh
RUN npm install

EXPOSE 3000
CMD ["npm", "start"]

