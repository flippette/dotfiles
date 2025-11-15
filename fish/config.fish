set -g fish_greeting

# disable the direnv warning
set -gx DIRENV_WARN_TIMEOUT 0

# other paths
fish_add_path -gP /opt/rocm/bin
fish_add_path -gP /opt/cuda/bin
fish_add_path -gP $HOME/.local/bin
fish_add_path -gP $CARGO_HOME/bin

if status is-interactive
    starship init fish | source
    direnv hook fish | source

    alias ls 'eza --icons=auto'
    alias lla 'll -a'
    alias cat bat
    alias du dust
    alias tree erd

    pfetch
end

# zoxide my beloved
zoxide init fish | source
