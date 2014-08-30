FROM dockerfile/nginx

ADD bin/ /usr/sbin/
RUN rm /etc/nginx/sites-enabled/default

VOLUME ["/etc/nginx/sites-templates"]

ENTRYPOINT ["entrypoint.sh"]
CMD ["nginx"]
