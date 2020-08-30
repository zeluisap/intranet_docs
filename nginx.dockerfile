FROM nginx:latest

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./proxy.conf /etc/nginx/proxy.conf

EXPOSE 80 443

ENTRYPOINT ["nginx"]

# Parametros extras para o entrypoint
CMD ["-g", "daemon off;"]
