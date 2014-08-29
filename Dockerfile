FROM nginx

ADD bin/ /usr/sbin/

VOLUME ["/var/log/nginx", "/etc/nginx/sites-templates"]
EXPOSE 80 443
WORKDIR /etc/nginx

ENTRYPOINT ["entrypoint.sh"]
CMD ["nginx"]
