FROM node 

WORKDIR /myapp

COPY . /myapp/

CMD ["npm","start"]
