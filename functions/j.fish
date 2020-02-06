function j -d "cd with smarts"
    if set -q argv[1] && test -d $argv
        cd $argv
    else
        __fzf_cd $argv
    end
end
