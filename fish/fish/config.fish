set -g fish_greeting

if status is-login
    # prepends a path to $PATH if it exists
    function add_path -a path
        if path is $path
            set -gx PATH "$path:$PATH"
        end
    end

    add_path $HOME/.local/bin
    add_path $HOME/.cargo/bin
    add_path /opt/resolve/bin
end

set -gx EDITOR nvim
set -gx VISUAL nvim

if status is-interactive
    pfetch
    starship init fish | source

    alias ls   "eza --icons=auto"
    alias ll   "ls -l"
    alias cat  "bat"
    alias du   "dust"
    alias tree "erd"
end
