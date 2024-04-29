FROM debian:10
COPY config.sh /root/
COPY zero.sh /root/
COPY run.sh /root/
WORKDIR /root/
RUN chmod +x run.sh zero.sh config.sh
RUN bash run.sh
CMD [ "bash", "zero.sh" ]
