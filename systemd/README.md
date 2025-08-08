# Systemd

## Delay before checking for network connection

System updates are triggered via timers. When a laptop wakes up after being suspended, the network connection is not immediately available, making the updates skip or fail. Waiting for some time in the `ExecCondition` before the check occurs solves the problem. The line with `ExecCondition=` ensures that the version with sleep replaces the original condition instead of appending to it.

```ini
[Service]
ExecCondition=
ExecCondition=/bin/bash -c 'sleep 10; [[ "$(busctl get-property org.freedesktop.NetworkManager /org/freedesktop/NetworkManager org.freedesktop.NetworkManager Metered | cut -c 3-)" == @(2|4) ]]'
```

Relevant services in bluefin:

- `brew-update.service`
- `brew-upgrade.service`
- `flatpak-system-update.service`
- `rpm-ostreed-automatic.service`
