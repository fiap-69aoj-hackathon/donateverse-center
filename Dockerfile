FROM node:10.19

RUN npm install -g pm2@2.10.4

COPY ./ /app

RUN cd /app \
    && npm install

WORKDIR /app

EXPOSE 3012

CMD ["npm", "start"]
