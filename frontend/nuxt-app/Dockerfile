FROM alpine:3.14

COPY . /app
RUN apk add --update nodejs npm

WORKDIR /app

RUN npm install
RUN npm run build

EXPOSE 3000

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

CMD [ "npm", "start" ]