# bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.bin

# fnm
fish_add_path $HOME/.local/share/fnm

# cargo
fish_add_path $HOME/.cargo/bin

# flyctl
set -Ux FLYCTL_INSTALL $HOME/.fly
fish_add_path $FLYCTL_INSTALL/bin

# Env
set -gx EDITOR nvim
set -gx CC gcc

# Pyenv
set -Ux PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin
