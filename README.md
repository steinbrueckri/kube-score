# Kube-score

![Dependabot](https://flat.badgen.net/dependabot/steinbrueckri/docker-kube-score?icon=dependabot)
[![Build Status](https://travis-ci.com/steinbrueckri/docker-kube-score.svg?branch=master)](https://travis-ci.com/steinbrueckri/docker-kube-score)
[![](https://images.microbadger.com/badges/version/z3rogate/kube-score.svg)](https://hub.docker.com/r/z3rogate/kube-score)

---

If you search the official `kube-score` image please go to [zegl/kube-score](https://github.com/zegl/kube-score/)).

The Official Image didn't fit for my usecase so I had to adjust it a bit so I could easily use it in a Google Cloud Build.

---

`kube-score` is a tool that performs static code analysis of your Kubernetes object definitions.

The output is a list of recommendations of what you can improve to make your application more secure and resilient.

You can test kube-score out in the browser with the [online demo](https://kube-score.com) ([source](https://github.com/kube-score/web)).
