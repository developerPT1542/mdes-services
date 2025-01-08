

up:
	@echo Pulling Latest Docker images versions...
	docker login
	docker pull docker.io/larbipts1/mdescs-services:mdescs
	docker pull docker.io/larbipts1/mdescs-services:gateway
	docker pull docker.io/larbipts1/mdescs-services:logger
	docker compose up -d
	@echo Project started successfully!

down:
	@echo Stopping Project...
	docker compose down
	@echo Project stopped successfully!