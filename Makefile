BIN_DIR 	?= node_modules/.bin
BUILD_DIR ?= build 
SRC_DIR 	?= src

BUILD_FLAGS ?= --presets es2015 
LINT_FLAGS 	?= --env es6 --parser-options 'sourceType: module' --no-eslintrc 
TEST_FLAGS 	?= 
DOC_FLAGS		?= -f md -o documentation.md

COLOR = \033[0;35m 
NC = \033[0m

build: 
	@echo "Building..."
	@$(BIN_DIR)/babel $(BUILD_FLAGS) -d $(BUILD_DIR) $(SRC_DIR) 

lint: 
	@echo "Linting..."
	@$(BIN_DIR)/eslint $(LINT_FLAGS) $(SRC_DIR)/** 

test: lint build
	@echo "Running tests..."
	@$(BIN_DIR)/ava $(TEST_FLAGS)

test-cov: lint build 
	@echo "Running tests with coverage..."
	@$(BIN_DIR)/nyc $(BIN_DIR)/ava 

doc:
	@echo "Generating documentation..."
	@$(BIN_DIR)/documentation build $(SRC_DIR) $(DOC_FLAGS) 

repl: build
	@echo "Launching REPL..."
	@node -r ./$(BUILD_DIR)

help:
	@echo
	@echo "	$(COLOR)build$(NC) 		- compile es2015+ code for distribution"
	@echo "	$(COLOR)lint$(NC) 		- validate source code"
	@echo "	$(COLOR)test$(NC) 		- run tests (lints, builds first)"
	@echo "	$(COLOR)test-cov$(NC) 	- run tests with code coverage"
	@echo "	$(COLOR)help$(NC) 		- you're looking at it"
	@echo

.PHONY: build lint test help
