FROM lexsys/base:2016-08-21-1257
MAINTAINER Ernesto Celis <ernesto@tic.uno>


COPY src /home/lexusr
RUN chown -R lexusr:lexusr /home/lexusr

WORKDIR /home/lexusr
USER lexusr

CMD ["/home/lexusr/deployment/run.sh", "start"]