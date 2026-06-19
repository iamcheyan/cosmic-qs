# cosmic-qs

Personal Quickshell configuration based on the `illogical-impulse` shell from
`dots-hyprland`.

This repository mirrors the runtime XDG config paths:

```text
.config/quickshell/
.config/illogical-impulse/config.json
```

## Restore

From the repository root:

```bash
rsync -a .config/quickshell/ ~/.config/quickshell/
mkdir -p ~/.config/illogical-impulse
rsync -a .config/illogical-impulse/config.json ~/.config/illogical-impulse/config.json
```

Restart Quickshell:

```bash
killall qs quickshell 2>/dev/null || true
setsid qs -c ii >/tmp/qs-ii-restart.log 2>&1 &
```

## Main Edit Points

- `.config/quickshell/ii/modules/common/Appearance.qml`
  - global colors, fonts, sizes, and rounding tokens
- `.config/quickshell/ii/modules/ii/bar/`
  - top bar layout and modules
- `.config/quickshell/ii/modules/ii/sidebarRight/`
  - right sidebar, sliders, quick toggles, calendar, todo, audio, network
- `.config/quickshell/ii/modules/ii/sidebarLeft/`
  - left sidebar and assistant UI
- `.config/illogical-impulse/config.json`
  - user options consumed by the Quickshell UI

Hyprland itself is not included here. Display, keyboard, workspace, window rules,
and compositor behavior stay in `~/.config/hypr`.
