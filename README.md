# Kube-score

[![Build Status](https://travis-ci.com/steinbrueckri/docker-kube-score.svg?branch=master)](https://travis-ci.com/steinbrueckri/docker-kube-score)
[![](https://images.microbadger.com/badges/image/z3rogate/kube-score.svg)](https://microbadger.com/images/z3rogate/kube-score "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/z3rogate/kube-score.svg)](https://microbadger.com/images/z3rogate/kube-score "Get your own version badge on microbadger.com")

# Why?

If you search the official `kube-score` image please go to [zegl/kube-score](https://github.com/zegl/kube-score/)).

The Official Image didn't fit for my usecase so I had to adjust it a bit so I could easily use it in a Google Cloud Build.

# What?

`kube-score` is a tool that performs static code analysis of your Kubernetes object definitions.

The output is a list of recommendations of what you can improve to make your application more secure and resilient.

You can test kube-score out in the browser with the [online demo](https://kube-score.com) ([source](https://github.com/kube-score/web)).

# How?

```yml
steps:

  #############################################################################################################
  # Running kube-ccore
  #############################################################################################################

  - id: kube-score monitoring
    name: 'z3rogate/kube-score:latest
    entrypoint: 'bash'
    args:
      - -c
      - |
        shopt -s globstar nullglob && kube-score score --output-format ci --ignore-test "service-type" /workspace/resources/monitoring/**/*.{yaml,yml}  || exit 0
    waitFor: ['-']
```
