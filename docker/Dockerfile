FROM nginx:stable-alpine

COPY nginx/nginx.conf /etc/nginx/conf.d

COPY entrypoint.sh /entrypoint.sh

RUN rm /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD sh /entrypoint.sh
