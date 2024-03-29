FROM tic1/lexsys_base:scarecrow
MAINTAINER Ernesto Celis <ernesto@tic.uno>

COPY src /home/lexusr
RUN chmod 777 /tmp ; chown -R lexusr:lexusr /home/lexusr 

# http, https, API, Editor
EXPOSE 80 443 3000 3001

WORKDIR /home/lexusr
USER lexusr
ENV LEXENV="sigicam_pje"
RUN ["/home/lexusr/deployment/build.sh", "bootstrap"]

ENTRYPOINT ["/bin/bash"]

CMD ["/srv/deployment/run.sh", "start"]
