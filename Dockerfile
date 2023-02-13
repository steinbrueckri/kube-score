FROM zegl/kube-score:v1.16.1 AS Artifact

FROM debian:stable-20230208-slim
COPY --from=Artifact /kube-score /usr/local/bin/kube-score
RUN chmod +x /usr/local/bin/kube-score
WORKDIR /workspace
CMD ["/bin/bash","-c","shopt -s globstar nullglob && /usr/local/bin/kube-score score --output-format ci /workspace/**/*.{yaml,yml}"]
