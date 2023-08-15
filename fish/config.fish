# set PATH
set -gx PATH $(xdg-user-dir DOCUMENTS)/scripts:$HOME/.local/bin:$HOME/.cargo/bin:/opt/resolve/bin:$PATH

if status is-interactive    
    # show sysfetch
    pfetch
    
    # pure prompt settings
    set -g pure_enable_single_line_prompt true
    set -g pure_show_subsecond_command_duration true
    set -g pure_show_jobs true
    
    # pure async git prompt
    set -g async_prompt_functions _pure_prompt_git

    # exported env vars
    set -gx EDITOR hx
    set -gx FZF_DEFAULT_COMMAND 'fd -H -t f'
    
    # aliases
    alias ls "exa --icons"
    alias tree "erd -I"
    alias ll "ls -l"
    alias la "ls -a"
    alias du "dust"
    alias cat "bat"
    alias rm 'echo "Consider using trash!"; false'
end
