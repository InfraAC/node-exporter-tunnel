FROM busybox:1.34.1

ADD ./node_exporter-1.3.1.linux-amd64/node_exporter /bin
ADD ./chisel_1.7.7_linux_amd64/chisel /bin

EXPOSE      9100
USER        root

COPY ./entrypoint.sh /bin
RUN chmod +x /bin/entrypoint.sh

ENTRYPOINT [ "/bin/entrypoint.sh" ]