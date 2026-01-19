function j -d "cd with smarts"
    if test -d "$argv[1]"
        cd $argv[1]
    else
        set -l dir (fd -t d --color=always --hidden --no-ignore \
            -E .git \
            -E node_modules \
            -E '*cache*' \
            -E '*Cache*' \
            -E .Trash \
            -E .trash \
            -E venv \
            -E .venv \
            -E __pycache__ \
            -E target \
            -E .rustup \
            -E .npm \
            -E .apm \
            -E .mypy_cache \
            2>/dev/null | fzf --ansi --no-preview --query "$argv")
        and cd $dir
    end
end
