FROM nginx:1.22.0-alpine
RUN rm /etc/nginx/conf.d/*
RUN mkdir -p /logs /data
COPY ./data.conf /etc/nginx/conf.d/
COPY ./data /data
VOLUME [ "/data" ]
