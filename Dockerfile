FROM lexsys/base:nigma
MAINTAINER Ernesto Celis <ernesto@tic.uno>

COPY src /home/lexusr
RUN chown -R lexusr:lexusr /home/lexusr

# http, https, API, Editor
EXPOSE 80 443 3000 3001 3002 3003 3004

WORKDIR /home/lexusr
USER lexusr

ENTRYPOINT ["/bin/bash"]

#CMD ["/home/lexusr/deployment/run.sh", "start"]
