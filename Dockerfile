FROM nginx:1.25.3-alpine3.18
RUN rm /etc/nginx/conf.d/*
RUN mkdir -p /logs /data
COPY ./data.conf /etc/nginx/conf.d/
COPY ./data /data
VOLUME [ "/data" ]
