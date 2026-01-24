# FZF default options
set -gx FZF_DEFAULT_OPTS '--layout=reverse --height=33% --preview-window=wrap --marker="*"'

if type -q fd
    set -l exclude "\
-E .git/ -E .git-worktrees/ \
-E .Trash/ -E .trash/ -E Applications/ -E Library/ \
-E '*Cache*/' -E '*cache*/' \
-E dist/ -E build/ \
-E .npm/ -E node_modules/ -E .node-gyp/ -E .apm/ \
-E venv/ -E env/ -E .venv/ -E __pycache__/ -E .mypy_cache/ -E .pytest_cache/ -E .ruff_cache/ -E '*.egg-info/' \
-E .cargo/ -E '*target/' \
-E '*.xcodeproj/' \
-E vendor/"

    set -q FZF_DEFAULT_COMMAND
    or set -gx FZF_DEFAULT_COMMAND "fd -t f --hidden $exclude"

    set -q FZF_CD_COMMAND
    or set -gx FZF_CD_COMMAND "fd -Lt d $exclude"

    set -q FZF_CD_WITH_HIDDEN_COMMAND
    or set -gx FZF_CD_WITH_HIDDEN_COMMAND "fd -Lt d --hidden $exclude"
end

# Options for PatrickF1/fzf.fish
# These are passed to fd when searching directories
set -gx fzf_fd_opts --hidden

# Preview commands
set -gx fzf_preview_dir_cmd eza --all --color=always
set -gx fzf_preview_file_cmd bat --style=numbers --color=always
