.ONESHELL:
SHELL = /bin/bash

.PHONY: help
help: 
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m  %-30s\033[0m %s\n", $$1, $$2}'

.PHONY: install
install: ## install hugo on mac
	brew install hugo
	brew install webp

.PHONY: theme_submodule
theme_submodule: ## clone the theme
	git submodule update --init --recursive

.PHONY: update_theme
update_theme: ## update the theme
	git submodule update --remote --merge


.PHONY: serve
serve: ## serve hugo file
	rm -rf public/ 
	hugo serve

convert: ## convert files to webm
	./convert_to_webm.sh