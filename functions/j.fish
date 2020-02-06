function j -d "cd with smarts"
    if test -d $argv
        cd $argv
    else
        __fzf_cd $argv
    end
end
