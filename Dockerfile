FROM node:8.10.0-alpine

RUN mkdir /src
ADD . /src
WORKDIR /src

RUN npm i

CMD ["npm", "start"]
