FROM node:13-alpine
RUN apk add --no-cache python g++ make
ADD . /app
ADD ./test /app
WORKDIR /app
RUN apt install tree -y
COPY . .
RUN yarn install --production
EXPOSE 6000
CMD ["node", "src/index.js"]
