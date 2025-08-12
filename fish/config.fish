set -g fish_greeting

# disable the direnv warning
set -x DIRENV_WARN_TIMEOUT 0

# use `difftastic` for `git diff`
set -x GIT_EXTERNAL_DIFF difft

# set XDG base dirs
set -x XDG_DATA_HOME $HOME/.local/share
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_STATE_HOME $HOME/.local/state
set -x XDG_CACHE_HOME $HOME/.cache

# gnupg home dirs
set -x GNUPGHOME $XDG_DATA_HOME/gnupg

# rust home dirs
set -x RUSTUP_HOME $XDG_DATA_HOME/rustup
set -x CARGO_HOME $XDG_DATA_HOME/cargo

# npm home dirs
set -x NPM_CONFIG_INIT_MODULE $XDG_CONFIG_HOME/npm/config/npm-init.js
set -x NPM_CONFIG_CACHE $XDG_CACHE_HOME/npm
set -x NPM_CONFIG_TMP $XDG_RUNTIME_DIR/npm

# nix
source "/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish"
fish_add_path $XDG_STATE_HOME/nix/profile/bin

# other paths
fish_add_path /opt/rocm/bin
fish_add_path /opt/cuda/bin
fish_add_path $HOME/.local/bin
fish_add_path $CARGO_HOME/bin

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
