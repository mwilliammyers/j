function j -d "cd with smarts"
    if test -d "$argv[1]"
        cd $argv[1]
    else
        set -l dir (fd -t d -HI | fzf --query "$argv")
        and cd $dir
    end
end
