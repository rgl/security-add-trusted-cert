# About

This will import and trust a given CA certificate without user interaction.

This is required because on macOS Big Sur 11.3+ the traditional certificate installation method, `security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain example.com-ca-crt.pem`, started to require user interaction, which prevents automated certificate installations.

# References

* [tart macos xcode image template](https://github.com/cirruslabs/macos-image-templates/blob/42b40752b5590aaa700f6b5e166c9d81cb4ddadb/templates/xcode.pkr.hcl#L139-L143).
* [[macOS] Install Apple certificate for Big Sur via swift binary](https://github.com/actions/runner-images/pull/3311).
