FROM ubuntu:18.04

RUN apt-get update && apt-get install -y coturn && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV TURN_PORT 3478
ENV TURN_PORT_START 10000
ENV TURN_PORT_END 10009
ENV TURN_USERNAME username
ENV TURN_PASSWORD password

ADD start.sh start.sh
RUN chmod +x start.sh

CMD ["./start.sh"]
