FROM drupal:8.4.2-apache
RUN mkdir /code
#RUN ln -s /var/www/html /code
RUN echo "touch" > /code/test.txt
ADD docker-entrypoint.sh /usr/local/bin/docker-entrypoint
RUN chmod +x /usr/local/bin/docker-entrypoint

VOLUME ["/code"]
ENTRYPOINT ["docker-entrypoint"]
CMD ["apache2-foreground"]
