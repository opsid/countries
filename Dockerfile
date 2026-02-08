FROM nginx:1.29.5-alpine3.23
RUN rm /etc/nginx/conf.d/*
RUN mkdir -p /logs /data
COPY ./data.conf /etc/nginx/conf.d/
COPY ./data /data
VOLUME [ "/data" ]
