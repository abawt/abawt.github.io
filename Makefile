.PHONY: all init

codeDir=code
opsDir=ops

all: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

build: ## Initialize Repo
	bundle exec jekyll build --source . --destination ../abawt.github.io && echo "blog.abawt.io" >> ../abawt.github.io/CNAME
