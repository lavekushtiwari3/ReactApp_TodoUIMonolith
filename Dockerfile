FROM node 
WORKDIR /Code_Path
COPY . .
RUN npm install
RUN npm run build

RUN apt update
RUN apt install -y nginx
RUN cp -r build/* /usr/share/nginx/html

