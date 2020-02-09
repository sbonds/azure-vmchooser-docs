FROM kyma/docker-nginx
ADD _site/ /var/www
CMD 'nginx'