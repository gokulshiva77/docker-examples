FROM ubuntu
LABEL maintainer="Gokul Shiva <gokul@shiva.me>"

USER root
COPY ./web-server.bash /

RUN chmod 755 /web-server.bash
RUN apt -y update
RUN apt -y install bash 
RUN apt -y install netcat-traditional

USER nobody

ENTRYPOINT [ "/web-server.bash" ]
