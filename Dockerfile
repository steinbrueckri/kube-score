FROM zegl/kube-score:v1.18.0 AS Artifact

FROM debian:stable-20240722-slim
COPY --from=Artifact /kube-score /usr/local/bin/kube-score
RUN chmod +x /usr/local/bin/kube-score
WORKDIR /workspace
CMD ["/bin/bash","-c","shopt -s globstar nullglob && /usr/local/bin/kube-score score --output-format ci /workspace/**/*.{yaml,yml}"]
