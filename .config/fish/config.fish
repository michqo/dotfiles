# Aliases
alias ll 'eza -lag'
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

# User abbreviations
abbr ytmp3 'yt-dlp --extract-audio --audio-format mp3'


# Init
zoxide init fish | source
fnm env --use-on-cd | source
pyenv init - | source

# Set locales
set -gx LC_ALL en_US.UTF-8  

# Greeting
set fish_greeting

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
