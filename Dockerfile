FROM nginx:alpine
ARG POLYER_DEPLOYMENT_ID
RUN test -n "$POLYER_DEPLOYMENT_ID" && echo "polyer-b1-cancel-window-$POLYER_DEPLOYMENT_ID" && sleep 120
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
