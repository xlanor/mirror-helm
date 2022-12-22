SYNC_VERSION=1.0.0
SYNC_IMAGE=ghcr.io/xlanor/sync-image

# phony rules
.PHONY: sync
sync:
	docker build -f Dockerfile-sync -t $(SYNC_IMAGE):$(SYNC_VERSION) .
	docker push $(SYNC_IMAGE):$(SYNC_VERSION)
