function j -d "cd with smarts"
    if test -d "$argv[1]"
        cd $argv[1]
    else
        set -l dir (fd -t d --color=always --hidden --no-ignore 2>/dev/null | fzf --ansi --no-preview --query "$argv")
        and cd $dir
    end
end
