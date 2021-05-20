# Investree Notifier
Intented to push investree notification across multiple platform.

- [x] MacOS notification (Syariah)
- [ ] Telegram notification
- etc

## Installation

### MacOS notification
```sh
cp src/macos/investreesyariah.sh /usr/local/bin/investreesyariah.sh
cp src/macos/io.investree.syariah.plist ~/Library/LaunchAgents/io.investree.syariah.plist
launchctl load /Users/$(whoami)/Library/LaunchAgents/io.investree.syariah.plist
```
