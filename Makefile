APP_VERSION?=dev

.PHONY: all build clean

all: build

build: security-add-trusted-cert

security-add-trusted-cert: main.swift
	sed -i.old -E "s,let version =.+,let version = \"$(APP_VERSION)\",g" $<
	rm -f $<.old
	swiftc -o $@ $<
	ls -laF
	file $@

clean:
	rm -f security-add-trusted-cert
