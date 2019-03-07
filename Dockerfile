 FROM nginx:latest

 COPY . /usr/share/nginx/html

 EXPOSE 80 6667     

 CMD ["nginx", "-g", "daemon off;"]
