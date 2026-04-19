# ESPHome Enhanced Dashboard — Home Assistant Add-on Repository

A Home Assistant add-on wrapping the [ESPHome Enhanced Dashboard](https://github.com/heffneil/esphome-enhanced-dashboard) — a modern, dark-themed replacement for the stock ESPHome dashboard.

Built on top of the official ESPHome HA add-on image, so you keep all the standard functionality (compile, upload, discovery, ingress, auth) and get a much more capable management UI on top.

The classic ESPHome dashboard is preserved at `/classic` inside the add-on.

---

## Install

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fheffneil%2Fesphome-enhanced-dashboard-addon)

Or manually:

1. In Home Assistant, open **Settings → Add-ons → Add-on Store**
2. Click the three-dot menu (⋮) in the top right → **Repositories**
3. Paste: `https://github.com/heffneil/esphome-enhanced-dashboard-addon`
4. Click **Add**, close the dialog, refresh the store
5. Find **ESPHome Enhanced Dashboard** under "ESPHome Enhanced Dashboard" section
6. Click **Install**, then **Start**
7. Open via the sidebar (panel) or the add-on's **Open Web UI** button

---

## What this is

This add-on is a thin overlay on top of the official ESPHome add-on. The stock ESPHome add-on's image is extended with a handful of modified dashboard files to provide a redesigned UI — everything else (compile toolchains, OTA, mDNS, PlatformIO, etc.) is 100% unchanged.

**You do not need to uninstall the official ESPHome add-on first**, but you should only run one of the two at a time (they both want port 6052).

## Features

See the [main project README](https://github.com/heffneil/esphome-enhanced-dashboard) for the full feature list with screenshots.

- Compact sortable table with search & tags
- Sliding side panel with all per-device actions
- Batch update / compile / archive with progress tracking
- Install to Specific Address (upload to any IP)
- Mark Inactive (stops polling offline devices)
- Ping Device diagnostic utility
- Embedded Ace YAML editor
- In-page modal for log / compile / validate output
- Classic dashboard at `/classic`

## Troubleshooting

**Ingress shows "502 Bad Gateway"**
Wait ~10 seconds for the service to finish starting, then refresh. If it persists, check the add-on logs.

**Dashboard looks like the stock one**
Hard refresh the browser (`Ctrl+Shift+R`). Verify the add-on restarted after install.

**Devices aren't compiling**
Same as the stock ESPHome add-on — PlatformIO toolchains download on first compile. Subsequent compiles are fast.

## Related

- [Enhanced dashboard Docker image](https://hub.docker.com/r/heffneil/esphome-enhanced-dashboard) — for non-HA users
- [Source code and issue tracker](https://github.com/heffneil/esphome-enhanced-dashboard)
- [Upstream PR to ESPHome](https://github.com/esphome/esphome/pull/15704)

## License

Same as upstream ESPHome — see [LICENSE](https://github.com/esphome/esphome/blob/dev/LICENSE).
