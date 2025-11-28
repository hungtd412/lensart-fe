FROM nginx:alpine

RUN rm -rf /etc/nginx/conf.d

COPY nginx.conf /etc/nginx/nginx.conf

COPY dist/ /usr/share/nginx/html

EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]