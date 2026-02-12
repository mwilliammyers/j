function j -d "cd with smarts"
    set -l git_root (git rev-parse --show-toplevel 2>/dev/null)

    if set -q git_root
        cd $git_root
    end

    if test -d "$argv[1]"
        cd $argv[1]
    else
        set -l dir (fd -t d --color=always $fzf_fd_opts . 2>/dev/null | fzf --ansi --no-preview --query "$argv")
        and cd $dir
    end
end
