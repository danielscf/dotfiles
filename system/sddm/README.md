# Sddm configuration

## Theme

## Custom entries for hyprland `work` and `on-the-go`

### Create script

Create a file under `/usr/local/bin`

```bash
#!/usr/bin/env bash

PROFILES="$HOME/.config/hypr/profiles"
DEFAULT="$PROFILES/default.conf"

WORK="$PROFILES/work.conf"
ON_THE_GO="$PROFILES/on-the-go.conf"

if [[ "$1" == "--work" ]]; then
  echo "source = $WORK" > "$DEFAULT"
  exec uwsm start hyprland-uwsm.desktop
fi

if [[ "$1" == "--on-the-go" ]]; then
  echo "source = $ON_THE_GO" > "$DEFAULT"
  exec uwsm start hyprland-uwsm.desktop
fi
```

### Add desktop entries

Create the desktop entries under `/usr/share/wayland-sessions`

```hyprland-uwsm-work.desktop
[Desktop Entry]
Name=Hyprland (UWSM - Work)
Comment=An intelligent dynamic tiling Wayland compositor
Exec=/usr/local/bin/set-hyprland-profile --work
TryExec=uwsm
DesktopNames=Hyprland
Type=Application
```

```hyprland-uwsm-on-the-go.desktop
[Desktop Entry]
Name=Hyprland (UWSM - On the go)
Comment=An intelligent dynamic tiling Wayland compositor
Exec=/usr/local/bin/set-hyprland-profile --on-the-go
TryExec=uwsm
DesktopNames=Hyprland
Type=Application
```
