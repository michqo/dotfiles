# Aliases
alias ll 'exa -l -g --long'
alias l='ls -lh'
alias py 'python'
alias pn 'pnpm'
alias nv 'nvim'
alias lv 'lvim'
alias activate 'source $(poetry env info --path)/bin/activate.fish'
alias p 'paru'
alias open 'code .'
alias grub-update 'sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias sr 'source ~/.config/fish/config.fish'
alias watchgpu 'gpustat --watch -i 1'
alias brightness 'ddcutil --display 1 setvcp 10 '
# TODO
alias night 'xgamma -rgamma 1 -ggamma 0.5 -bgamma 0.5'
alias day 'xgamma -gamma 1'

# User abbreviations
abbr ytmp3 'yt-dlp --extract-audio --audio-format mp3'

# ~/.local/bin
set -x PATH $HOME/.local/bin $PATH

# ~/.bin
set -x PATH $HOME/.bin $PATH

set -x GIT_ASKPASS /usr/bin/ksshaskpass

# rust
set -x PATH $HOME/.cargo/bin $PATH

# flyctl
set FLYCTL_INSTALL /home/michal/.fly
set -x PATH $FLYCTL_INSTALL/bin $PATH

# Env
set -gx EDITOR nvim
set -gx CC clang

# Set locales
set -gx LC_ALL en_US.UTF-8  

# Greeting
set fish_greeting

zoxide init fish | source

# Prompt
function fish_prompt
  set -l cwd (basename (prompt_pwd))

  set -l normal_color		(set_color normal)
  set -l arrow_color		(set_color magenta)
  set -l directory_color	(set_color blue)

  set -l arrow $arrow_color " ❯"
  #set -l at "$USER@$hostname "
  #set -l sign $color2 '$'

  #echo -n -s $sign $normal_color
  echo -n -s $directory_color $cwd $arrow $normal_color
  echo -n -s " "
end

# TokyoNight Color Palette
set -l foreground c0caf5
set -l selection 33467C
set -l comment 565f89
set -l red f7768e
set -l orange ff9e64
set -l yellow e0af68
set -l green 9ece6a
set -l purple 9d7cd8
set -l cyan 7dcfff
set -l pink bb9af7

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
