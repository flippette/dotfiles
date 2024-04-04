# dotfiles

My config files.

## Installing

```sh
  stow -R */ -t $XDG_CONFIG_HOME
  bat cache --build # bat (optional)

  # nvim (optional)
  nvim --headless 'Lazy! sync' +qa
```

## Additional dependencies

Some `stow` packages include references to other commands that must be present
on the system:

- `fish`: `nvim`, `starship`, `pfetch`, `eza`, `bat`, `dust`, `erd`
- `hypr`: `Hyprland`, `hyprpaper`, `bemenu-run`
- `nvim`: `fzy`, `tree-sitter`
