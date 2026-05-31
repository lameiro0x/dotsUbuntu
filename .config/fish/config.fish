if status is-interactive
    # Commands to run in interactive sessions can go here
end

# ── Alias generales ─────────────────────────────────────
alias ls="lsd"
alias cat="batcat"
alias update="sudo apt update && sudo apt upgrade -y"

# ── ANTLR4 ──────────────────────────────────────────────
set -x CLASSPATH . /usr/local/lib/antlr-4.13.0-complete.jar $CLASSPATH
alias antlr4 "java -jar /usr/local/lib/antlr-4.13.0-complete.jar"
alias grun "java org.antlr.v4.gui.TestRig"

# ── Prompt ──────────────────────────────────────────────
starship init fish | source

# ── Conda (carga perezosa) ──────────────────────────────
function conda
    # Borrar esta función para no entrar en bucle
    functions -e conda
    # Cargar el hook de conda
    eval $HOME/anaconda3/bin/conda "shell.fish" "hook" | source
    # Volver a ejecutar con los mismos argumentos
    command conda $argv
end

# ── GHCup (Haskell) ─────────────────────────────────────
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
set -gx PATH $HOME/.cabal/bin $HOME/.ghcup/bin $PATH # ghcup-env

# ── PATH ────────────────────────────────────────────────
export PATH="$HOME/.local/bin:$PATH"

# ── Configuración local/personal (no versionada) ───────
# Pon aquí aliases, rutas y funciones específicas de tu máquina.
if test -f $HOME/.config/fish/config.local.fish
    source $HOME/.config/fish/config.local.fish
end
