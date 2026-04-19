# ESPHome Enhanced Dashboard — Configuration

This add-on is a drop-in replacement for the official ESPHome Device Builder add-on. All of the same options apply.

## Options

### `leave_front_door_open` (optional, bool)

By default the dashboard requires Home Assistant authentication when accessed outside of the HA frontend (via the direct port, not ingress). Set to `true` to disable that check.

**Warning:** only use this if your HA instance is not exposed to the internet.

### `streamer_mode` (optional, bool)

Hide potentially sensitive details (WiFi SSID, device IPs, etc.) from logs and the dashboard UI when streaming.

### `status_use_ping` (optional, bool)

Use ping to determine if devices are online instead of mDNS. Useful on networks where mDNS doesn't reach reliably.

### `ssl` / `certfile` / `keyfile` (optional)

Direct HTTPS access on port 6052 (ingress doesn't need these — it's always secured by HA). Set `ssl: true` and point `certfile` / `keyfile` at files under `/ssl/`.

## Tag storage

Device tags are saved at `/config/.esphome/device-tags.json` in your Home Assistant config volume. Inactive-device state is at `/config/.esphome/inactive-devices.json`. Both survive add-on restarts and Home Assistant backups (they're part of the normal `/config` mapping).

## Accessing the classic dashboard

The stock ESPHome dashboard is preserved at `/classic`. If you're using ingress, that's `/api/hassio_ingress/<token>/classic`. Most features are available in the enhanced UI, but the classic dashboard remains available for anything missing.

## Upgrading

Home Assistant will notify you when a new version is available in your add-on's settings page. Just click Update.

## Reverting

Uninstall this add-on and re-install the official ESPHome add-on. Your device configs in `/config/esphome/` are untouched by either action.

## Reporting issues

https://github.com/heffneil/esphome-enhanced-dashboard-addon/issues
