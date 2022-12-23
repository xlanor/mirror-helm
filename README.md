### mirror.jingk.ai

Kubernetes helm charts and associated Dockerfiles for running a linux mirror on Kubernetes.

ArgoCD is used for deploying into the kubernetes cluster.
Istio is used for the ingress controller and service mesh.
Caddy is used for the webserver and file browser.
Kubernetes CronJobs are used to handle the mirror sync once daily.
NFSv4 is used to mount remote shares from my storage array.

The associated files (and chart) assumes the above and does not contain the required files to set up kubernetes, or istio, or argo.

Licensed under the MIT license. Do what you want with it.
