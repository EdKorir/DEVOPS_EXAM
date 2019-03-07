 FROM nginx:latest

 COPY index.html /usr/share/nginx/html

 EXPOSE 6667     

 CMD ["nginx", "-g", "daemon off;"]