FROM arm64v8/alpine

COPY ./timestamp-line /usr/local/bin/timestamp-line
RUN chmod +x /usr/local/bin/timestamp-line

COPY ./logtruncate /etc/periodic/daily/logtruncate
RUN chmod +x /etc/periodic/daily/logtruncate

CMD ["/bin/sh", "-c", "crond -b -l 8 && cat /dev/ttyUSB0 | timestamp-line >> /var/log/marax/marax.log"]
