FROM nginx:alpine
RUN exit 23
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
