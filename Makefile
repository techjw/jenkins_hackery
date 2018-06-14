DEPLOY=jenkins

create-vms:
	cd deployment-manager && gcloud deployment-manager deployments create $(DEPLOY) --config config.yaml

destroy-vms:
	cd deployment-manager && gcloud deployment-manager deployments delete $(DEPLOY) -q
