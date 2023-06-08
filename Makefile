.PHONY: build

build: security-add-trusted-cert

security-add-trusted-cert: main.swift
	swiftc -o $@ $<
	ls -laF
	file $@
