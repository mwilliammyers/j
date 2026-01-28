# FZF default options
# TODO: This should probably be set elsewhere
set -gx FZF_DEFAULT_OPTS '--layout=reverse --height=33% --preview-window=wrap --marker="*"'

# Shared fd exclusions for fzf
# TODO: This should maybe be set elsewhere
set -l fzf_exclude \
    -E .git/ -E .git-worktrees/ \
    -E .Trash/ -E .trash/ -E Applications/ -E Library/ \
    -E '*Cache*/' -E '*cache*/' \
    -E dist/ -E build/ \
    -E .npm/ -E node_modules/ -E .node-gyp/ -E .apm/ \
    -E venv/ -E env/ -E .venv/ -E __pycache__/ -E .mypy_cache/ -E .pytest_cache/ -E .ruff_cache/ -E '*.egg-info/' \
    -E .cargo/ -E '*target/' \
    -E '*.xcodeproj/' \
    -E vendor/

# For fzf.vim :Files command
if type -q fd
    set -q FZF_DEFAULT_COMMAND
    or set -gx FZF_DEFAULT_COMMAND (string join ' ' -- fd --type f --hidden --no-ignore (string escape -- $fzf_exclude))
end

# For PatrickF1/fzf.fish
set -gx fzf_fd_opts --no-ignore --hidden $fzf_exclude

# Preview commands
set -gx fzf_preview_dir_cmd eza --all --color=always
set -gx fzf_preview_file_cmd bat --style=numbers --color=always
