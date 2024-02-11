set -g fish_greeting

if status is-login
    set -gx PATH "$HOME/.local/bin:$HOME/.cargo/bin:$PATH"
end

if status is-interactive
    pfetch
    starship init fish | source

    alias ls  "exa --icons=auto"
    alias ll  "ls -l"
    alias cat "bat"
    alias du  "dust"
end
