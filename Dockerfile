FROM grafana/alloy:v1.12.2

COPY config.alloy /etc/alloy/config.alloy

ENTRYPOINT ["/bin/alloy"]
CMD ["run", "/etc/alloy/config.alloy", "--storage.path=/tinfoil/alloy-data", "--server.http.listen-addr=0.0.0.0:12345"]
