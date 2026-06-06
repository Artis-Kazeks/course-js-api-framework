FROM node:17
LABEL DESCRIPTION="Testing running dockerised tests against node app"

WORKDIR /api-tests
COPY package.json .
COPY config.js .
COPY tests tests

RUN npm i

CMD [ "run", "BOOKS", "BOOKS_LOCAL" ]
ENTRYPOINT [ "npm" ]
