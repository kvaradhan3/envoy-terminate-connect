FROM envoyproxy/envoy-dev:latest
RUN apt-get update
COPY terminate-connect.yaml /etc/envoy.yaml
ENTRYPOINT [ "/usr/local/bin/envoy", "-c", "/etc/envoy.yaml" ]
