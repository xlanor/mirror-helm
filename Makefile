.ONESHELL:
SYNC_VERSION=1.0.1
SYNC_IMAGE=ghcr.io/xlanor/sync-image

MIRROR_VERSION=1.0.0
MIRROR_IMAGE=ghcr.io/xlanor/mirror-webserver

BASE_CADDY_VERSION=1.0.0
BASE_CADDY_IMAGE=ghcr.io/xlanor/mirror-caddy-base

# phony rules
.PHONY: sync
sync:
	cd sync
	docker build -f Dockerfile-sync -t $(SYNC_IMAGE):$(SYNC_VERSION) .
	docker push $(SYNC_IMAGE):$(SYNC_VERSION)

.PHONY: webserver
webserver:
	cd webserver
	docker build -f Dockerfile-caddy -t $(MIRROR_IMAGE):$(MIRROR_VERSION) .
	docker push $(MIRROR_IMAGE):$(MIRROR_VERSION)
	
.PHONY: base-caddy 
base-caddy:
	cd webserver
	docker build -f Dockerfile-caddy-base -t $(BASE_CADDY_IMAGE):${BASE_CADDY_VERSION} .
	docker push $(BASE_CADDY_IMAGE):$(BASE_CADDY_VERSION)
	
