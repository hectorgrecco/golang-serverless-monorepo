build:
	@echo Building $(service)/$(function)...
	go build -o services/$(service)/bin/$(function) services/$(service)/cmd/$(function).go
	@echo Function builded.

deploy:
	@echo Deploying $(service)/$(function)...
	go build -o services/$(service)/bin/$(function) services/$(service)/cmd/$(function).go
	sls deploy -f -s=$(stage)
	@echo Function deployed.