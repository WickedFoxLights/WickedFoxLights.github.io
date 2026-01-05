GSSG_REPO := https://github.com/SimonMo88/ghost-static-site-generator.git
GSSG_DIR  := .vendors/ghost-static-site-generator
GSSG_COMMIT := 0999d227c0a4238b28423f0535c5844477f067f2
IMAGE     := ghost-static-site-generator:local

DEV_DOMAIN := http://ghost.wicked.fox
PROD_DOMAIN := https://wickedfoxlights.github.io
OUTPUT_DIR := docs

.PHONY: all gssg-update gssg-build gssg-run clean

all: gssg-run

## Clone or update the generator repo
gssg-update:
	@if [ ! -d "$(GSSG_DIR)/.git" ]; then \
		echo "Cloning ghost-static-site-generator..."; \
		git clone $(GSSG_REPO) $(GSSG_DIR); \
	fi
	@echo "Checking out pinned commit $(GSSG_COMMIT)..."
	@cd $(GSSG_DIR) && \
		git fetch --quiet && \
		git checkout --quiet $(GSSG_COMMIT)

## Build the Docker image
gssg-build: gssg-update
	docker build -t $(IMAGE) $(GSSG_DIR)

## Run the generator
gssg-run: gssg-build
	mkdir -p $(OUTPUT_DIR)
	docker run --rm \
		-v "$(PWD)/$(OUTPUT_DIR):/data" \
		$(IMAGE) \
		--domain $(DEV_DOMAIN) \
		--productionDomain $(PROD_DOMAIN)

## Optional cleanup
clean:
	rm -rf $(OUTPUT_DIR)
