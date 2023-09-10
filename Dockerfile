FROM node:16

EXPOSE 8080

COPY ./package.json /opt/app/package.json
COPY ./package-lock.json /opt/app/package-lock.json

RUN cd /opt/app && yarn

COPY . /opt/app

WORKDIR /opt/app

RUN yarn build

CMD ["yarn", "start"]
