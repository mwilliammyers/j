# FZF default options
set -gx FZF_DEFAULT_OPTS '--layout=reverse --height=33% --preview-window=wrap --marker="*"'

# Options for PatrickF1/fzf.fish
# These are passed to fd when searching directories
set -gx fzf_fd_opts --hidden

# Preview commands
set -gx fzf_preview_dir_cmd eza --all --color=always
set -gx fzf_preview_file_cmd bat --style=numbers --color=always
