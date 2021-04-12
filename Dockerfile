FROM node:14

ENV PATH /app/node_modules/.bin:$PATH

WORKDIR /app

COPY . ./

COPY ["package.json", "./"]

COPY ["package-lock.json", "./"]

RUN npm install

####EXPOSE 3000

CMD ["npm", "start"]