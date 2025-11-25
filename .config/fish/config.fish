if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias ls="lsd"
alias cat="batcat"
alias update="sudo apt update && sudo apt upgrade -y"

#alias antlr4='java -jar /home/fomo/Documents/antlr-4.13.2-complete.jar'
#alias grun='java org.antlr.v4.gui.TestRig'

set -x CLASSPATH . /usr/local/lib/antlr-4.13.0-complete.jar $CLASSPATH
alias antlr4 "java -jar /usr/local/lib/antlr-4.13.0-complete.jar"
alias grun "java org.antlr.v4.gui.TestRig"

starship init fish | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#if test -f /home/fomo/anaconda3/bin/conda
#    eval /home/fomo/anaconda3/bin/conda "shell.fish" "hook" $argv | source
#else
#    if test -f "/home/fomo/anaconda3/etc/fish/conf.d/conda.fish"
#        . "/home/fomo/anaconda3/etc/fish/conf.d/conda.fish"
#    else
#        set -x PATH "/home/fomo/anaconda3/bin" $PATH
#    end
#end
# <<< conda initialize <<<

# 🔹 Lazy load de conda en fish
function conda
    # Borrar esta función para no entrar en bucle
    functions -e conda
    # Cargar el hook de conda
    eval /home/fomo/anaconda3/bin/conda "shell.fish" "hook" | source
    # Volver a ejecutar con los mismos argumentos
    command conda $argv
end

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/fomo/.ghcup/bin $PATH # ghcup-env