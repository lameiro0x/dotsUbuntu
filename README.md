# dotsUbuntu

Mis dotfiles de Linux con **Hyprland** (compositor Wayland) sobre **Ubuntu 24.04**.
Configuración basada en el estándar XDG (`~/.config`), más las fuentes Nerd Font
incluidas en `.fonts/`.

## Componentes

| Categoría | Programa |
|---|---|
| Compositor (WM) | **Hyprland** (`hypr/`) + `hyprpaper` |
| Barra de estado | **Waybar** (`waybar/`) |
| Lanzador | **Wofi** (`wofi/`) · *`rofi/` incluido pero ya no se usa por defecto* |
| Terminal principal | **kitty** (`kitty/`) |
| Terminal secundaria | **Alacritty** (`alacritty/`) |
| Shell | **Fish** (`fish/`) — ver nota sobre `config.local.fish` |
| Prompt | **Starship** (`starship.toml`) |
| Visualizador de audio | **cava** (`cava/`) |
| System info | **Fastfetch** (`fastfetch/`) · *`neofetch/` legacy* |
| Editores | **micro** (`micro/`) y **nano** (`.nanorc`) |
| Monitor | **htop** (`htop/`) |
| Tema GTK | `gtk-3.0/` |
| Autoarranque | `autostart/` (JetBrains Toolbox) |
| Fuentes | Nerd Fonts en `.fonts/` (JetBrainsMono, FiraCode, Departure Mono, GohuFont) |

## Instalación

Clona el repo y enlaza/copia las configuraciones a tu `$HOME`:

```sh
git clone https://github.com/lameiro0x/dotsUbuntu.git
cd dotsUbuntu

# Configuraciones (XDG)
cp -r .config/* ~/.config/

# Wallpaper de Hyprland incluido
cp .config/hypr/hong-kong-night.jpg ~/.config/hypr/

# Fuentes Nerd Font
mkdir -p ~/.local/share/fonts
cp .fonts/*.ttf .fonts/*.otf ~/.local/share/fonts/
fc-cache -fv
```

> Sustituye `cp -r` por enlaces simbólicos (`ln -s`) si prefieres mantener las
> configuraciones sincronizadas con el repo.

### Dependencias (Ubuntu / apt)

```sh
sudo apt update
sudo apt install -y waybar wofi kitty alacritty fish fastfetch \
  micro htop cava grim slurp wl-clipboard mpd ncmpcpp ranger
```

Algunos componentes no están en los repos de Ubuntu y se instalan aparte:
`hyprland` y `hyprpaper` (compilados o vía repos de terceros), **starship**
(`curl -sS https://starship.rs/install.sh | sh`), **brave**, **VS Code**,
`lsd` y `bat` (los alias `ls`/`cat` de fish los usan).

### Configuración local de fish

`fish/config.fish` carga, si existe, `~/.config/fish/config.local.fish`, que
**no está versionado** (aliases, rutas y funciones específicas de tu máquina).
Crea el tuyo a partir de tus necesidades; no se subirá al repo.

## Atajos de teclado (Hyprland)

`$mainMod` = tecla **Super**.

### Ventanas y sesión
| Atajo | Acción |
|---|---|
| `Ctrl + Q` | Cerrar ventana activa |
| `Super + F` | Pantalla completa |
| `Super + V` | Alternar flotante |
| `Super + J` | Alternar split (dwindle) |
| `Ctrl + H/J/K/L` | Mover el foco entre ventanas |
| `Super + Ctrl + H/J/K/L` | Mover la ventana |
| `Ctrl + Shift + H/J/K/L` | Redimensionar la ventana (±40) |
| `Super + ratón izq/der` | Mover / redimensionar arrastrando |
| `Super + Shift + E` | Salir de Hyprland |
| `Super + Shift + Q` | Forzar cierre (`hyprctl kill`) |

### Workspaces
| Atajo | Acción |
|---|---|
| `Ctrl + ← / →` | Workspace anterior / siguiente |
| `Ctrl + 1…5` | Ir al workspace 1–5 |
| `Ctrl + Shift + 1…5` | Mover ventana al workspace 1–5 |
| `Super + U` | Alternar workspace especial |
| `Super + Shift + U` | Mover ventana al workspace especial |

### Lanzadores y apps
| Atajo | Acción |
|---|---|
| `Ctrl + Return` | Abrir kitty (terminal principal) |
| `Ctrl + Space` | Lanzador de apps (Wofi) |
| `Shift + Alt + B` | Brave |
| `Shift + Alt + V` | VS Code |
| `Shift + Alt + N` | Dolphin (archivos) |
| `Shift + Alt + G` | Mousepad |
| `Shift + Alt + C` | Calculadora (kcalc) |
| `Super + F1` | ncmpcpp + cava (kitty) |
| `Shift + Alt + R` | ranger (kitty) |

### Capturas y sistema
| Atajo | Acción |
|---|---|
| `Print` | Captura de pantalla completa → `~/Pictures` |
| `Shift + Print` | Captura de región → `~/Pictures` |
| `Ctrl + Shift + S` | Captura de región al portapapeles |
| `Super + F2 / F3 / F4` | Volumen − / + / silenciar |
| `Super + Shift + B` | Recargar Waybar |
| `Super + H` | Mostrar/ocultar Waybar |

Consulta `~/.config/hypr/hyprland.conf` para el listado completo (incluye atajos
extra personales como `mpvpaper`, Anki, etc.).
