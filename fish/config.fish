set -g fish_greeting

source "/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish"
fish_add_path $HOME/.nix-profile

fish_add_path /opt/rocm/bin
fish_add_path /opt/cuda/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.local/share/coursier/bin

# disable the direnv warning
set -x DIRENV_WARN_TIMEOUT 0

# use `difftastic` for `git diff`
set -x GIT_EXTERNAL_DIFF difft

# set XDG base dirs
set -x XDG_DATA_HOME $HOME/.local/share
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_STATE_HOME $HOME/.local/state
set -x XDG_CACHE_HOME $HOME/.cache

if status is-interactive
    set ZELLIJ_AUTO_EXIT true
    eval "$(zellij setup --generate-auto-start fish)"

    pfetch
    starship init fish | source
    direnv hook fish | source

    alias ls 'eza --icons=auto'
    alias lla 'll -a'
    alias cat bat
    alias du dust
    alias tree erd
end

# zoxide my beloved
zoxide init fish | source
