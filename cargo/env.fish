# rustup shell setup
if not contains "/home/flippette/.local/share/cargo/bin" $PATH
    # Prepending path in case a system-installed rustc needs to be overridden
    set -x PATH "/home/flippette/.local/share/cargo/bin" $PATH
end
