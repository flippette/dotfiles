set -g fish_greeting

fish_add_path /opt/rocm/bin
fish_add_path /opt/cuda/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.local/share/coursier/bin

# nix is optional on my systems for now :shrug:
set nix "/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish"
test -e "$nix" && source "$nix"

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
