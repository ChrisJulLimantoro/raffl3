.PHONY: help install node compile test clean

help: ## Show this help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

install: ## Install project dependencies
	npm install

node: ## Start a Hardhat node
	npx hardhat node

compile: ## Compile smart contracts
	npx hardhat compile

test: ## Run tests
	npx hardhat test

clean: ## Clean artifacts and cache
	npx hardhat clean
