FROM node:12

# Setting working directory. All the path will be relative to WORKDIR
WORKDIR /usr/src/app

# Installing dependencies
COPY package*.json ./
RUN yarn install

# Copying source files
COPY . .

# Building app
RUN yarn build

ARG SOME_ARG=${API_URL}
RUN echo "ARGS is ${SOME_ARG}"
# Running the app
CMD [ "yarn", "start" ]