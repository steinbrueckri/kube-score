FROM zegl/kube-score:v1.4.0 AS Artifact

FROM debian:stable-20191118-slim
COPY --from=Artifact /kube-score /usr/local/bin/kube-score
RUN chmod +x /usr/local/bin/kube-score
CMD ["/bin/bash","-c","shopt -s globstar nullglob && /usr/local/bin/kube-score score --output-format ci /workspace/**/*.{yaml,yml}"]
