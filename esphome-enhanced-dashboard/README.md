# ESPHome Enhanced Dashboard — Home Assistant Add-on

A modern, dark-themed replacement for the stock ESPHome dashboard, running as a Home Assistant add-on. Compiles, uploads, and manages your ESPHome devices exactly like the standard ESPHome add-on, but with a redesigned management UI.

The stock ESPHome dashboard is preserved and available at `/classic` if you ever want to use it.

## What's different from the standard ESPHome add-on?

- **Compact sortable table** — Status, Name, IP, Platform, Version, Comment, Tags, Config File
- **Live search** across every column
- **Device tags** with quick-filter pill bar
- **Mark Inactive** — stops polling devices you know are offline
- **Archive & restore** configs with one click
- **Sliding side panel** with every per-device action
- **Batch actions** — update / compile / archive multiple devices at once
- **Install to Specific Address** — upload to any IP or hostname
- **Ping Device** utility with latency & packet loss
- **In-page YAML editor** with Ace syntax highlighting
- **In-page modal** for logs / compile / validate (no popup windows)
- **Clickable IP** column opens device web UI directly

Everything else — compile, upload, discovery, Home Assistant integration, ingress — works exactly like the official add-on.

## Documentation

See [DOCS.md](DOCS.md) for configuration options and [the main README](https://github.com/heffneil/esphome-enhanced-dashboard) for the full feature overview with screenshots.
