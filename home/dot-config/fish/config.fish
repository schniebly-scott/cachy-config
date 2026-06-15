source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
function code-jupyter
    # Launch VS Code with proposed APIs enabled
    code --enable-proposed-api ms-toolsai.jupyter --enable-proposed-api ms-python.python $argv
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/scott/miniforge3/bin/conda
    eval /home/scott/miniforge3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/scott/miniforge3/etc/fish/conf.d/conda.fish"
        . "/home/scott/miniforge3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/scott/miniforge3/bin" $PATH
    end
end
# <<< conda initialize <<<
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
