# production environment
FROM nginx:1.16.0-alpine

COPY ./certs/ /usr/share/nginx/html/.well-known/acme-challenge/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]