FROM node:14.17.4

EXPOSE 7008

COPY ./package.json /opt/app/package.json
COPY ./package-lock.json /opt/app/package-lock.json

RUN cd /opt/app && yarn

COPY . /opt/app

WORKDIR /opt/app

RUN yarn build

CMD ["yarn", "start"]
