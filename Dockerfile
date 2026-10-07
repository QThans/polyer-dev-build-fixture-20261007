FROM nginx:alpine
RUN echo polyer-b1-cancel-window && sleep 120
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
