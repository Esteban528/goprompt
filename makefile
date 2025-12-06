PROGRAM=grompt

SILENT=go
BUILD_DIR := bin

.PHONY: run build build-static

run:
	$(SILENT) run .

build:
	$(SILENT) build -o $(BUILD_DIR)/$(PROGRAM) .

build-static:
	env CGO_ENABLED=0 $(SILENT) build -o $(BUILD_DIR)/$(PROGRAM) -a -ldflags '-extldflags "-static"' .
