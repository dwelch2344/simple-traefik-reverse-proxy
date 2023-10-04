FROM traefik:v2.10

ADD config/traefik.yml /traefik.yml
ADD config/routes.yml /routes.yml

CMD [ "traefik", "--configFile=/traefik.yml", "--log.level=DEBUG" ]