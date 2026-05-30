# dotsUbuntu

Mis dotfiles de Linux con **Hyprland** (compositor Wayland). Configuración basada
en el estándar XDG (`~/.config`), más las fuentes Nerd Font incluidas en `.fonts/`.

## Componentes

| Categoría | Programa |
|---|---|
| Compositor (WM) | **Hyprland** (`hypr/`) + `hyprpaper` |
| Barra de estado | **Waybar** (`waybar/`) |
| Lanzadores | **Rofi** (`rofi/`) y **Wofi** (`wofi/`) |
| Terminal principal | **Alacritty** (`alacritty/`) |
| Terminal auxiliar | **kitty** (cava, ncmpcpp, ranger) |
| Shell | **Fish** (`fish/`) |
| Prompt | **Starship** (`starship.toml`) |
| System info | **Fastfetch** (`fastfetch/`) y **Neofetch** (`neofetch/`) |
| Editores | **micro** (`micro/`) y **nano** (`.nanorc`) |
| Monitor | **htop** (`htop/`) |
| Tema GTK | `gtk-3.0/` |
| Fuentes | Nerd Fonts en `.fonts/` (JetBrainsMono, FiraCode, Departure Mono, GohuFont) |

## Instalación

Clona el repo y enlaza/copía las configuraciones a tu `$HOME`:

```sh
git clone https://github.com/lameiro0x/dotsUbuntu.git
cd dotsUbuntu

# Configuraciones (XDG)
cp -r .config/* ~/.config/

# Fuentes Nerd Font
mkdir -p ~/.local/share/fonts
cp .fonts/*.ttf .fonts/*.otf ~/.local/share/fonts/
fc-cache -fv
```

> Sustituye `cp -r` por enlaces simbólicos (`ln -s`) si prefieres mantener las
> configuraciones sincronizadas con el repo.

Dependencias principales (Arch/AUR o el gestor de tu distro):
`hyprland`, `waybar`, `rofi`, `wofi`, `alacritty`, `kitty`, `fish`, `starship`,
`fastfetch`, `neofetch`, `micro`, `htop`, `dunst`, `swaybg`/`mpvpaper`, `mpd`.

## Atajos de teclado (Hyprland)

`$mainMod` = tecla **Super**.

| Atajo | Acción |
|---|---|
| `Super + Return` | Abrir Alacritty |
| `Super + D` | Lanzador de apps (Rofi) |
| `Super + ← / →` | Cambiar de workspace |
| `Super + Shift + Q` | Cerrar ventana activa |
| `Super + Shift + B` | Recargar Waybar |
| `Super + Print` | Captura de región (grim + swappy) |
| `Super + Shift + S` | Captura de región al portapapeles |
| `Shift + Alt + B` | Brave |
| `Shift + Alt + V` | VS Code |
| `Shift + Alt + N` | Dolphin (archivos) |
| `Super + F1` | ncmpcpp + cava (kitty) |
| `Shift + Alt + R` | ranger (kitty) |

Consulta `~/.config/hypr/hyprland.conf` para el listado completo.
