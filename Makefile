GOPATH := $(shell mktemp -d -t gocode.XXXXXX)

.PHONY: install
install:
	GOPATH=$(GOPATH) go get -u github.com/nsf/gocode
	cp $(GOPATH)/bin/gocode .
	@rm -rf $(GOPATH)
