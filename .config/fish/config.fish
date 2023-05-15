set fish_greeting ""

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# Java
set -gx PATH $HOME/.jenv/bin $PATH
eval (jenv init - | source)

# Aliases
if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end
