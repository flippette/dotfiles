set -g fish_greeting

if status is-login
    set -gx PATH "$HOME/documents/scripts:$HOME/.local/bin:$HOME/.cargo/bin:$PATH"
    sudo amdgpu-oc
end

set -gx EDITOR hx
set -gx VISUAL hx

if status is-interactive
    pfetch
    starship init fish | source

    # aliases
    alias ls  "exa --icons=auto"
    alias ll  "ls -l"
    alias cat "bat"
    alias du  "dust"
    alias rm  "echo use trash instead!"
end
