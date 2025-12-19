FROM ubuntu:20.04


RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    && rm -rf /var/lib/apt/lists/*


RUN mkdir /nats_clone


RUN git clone https://github.com/nats-io/nats.c.git /nats_clone


VOLUME ["/nats_clone"]

CMD ["sleep", "infinity"]
