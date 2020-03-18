FROM node:13

WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

COPY package.json /app/package.json
RUN npm install
RUN npm install -g @angular/cli@~9.1.0-next.1
COPY . /app
RUN ng build
CMD ng serve --host 0.0.0.0
