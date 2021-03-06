# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/root/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz add-zsh-hook
function xterm_title_precmd () {
  print -Pn '\e]2;%n@%m:%1~\a'
}
function xterm_title_preexec () {
  print -Pn "\e]2;%#> ${(p)1} | %n@%m:%1~\a"
}
add-zsh-hook -Uz precmd xterm_title_precmd
add-zsh-hook -Uz preexec xterm_title_preexec

PROMPT=" %B%F{11}%~%f %# %(?.%F{154}>%f%F{190}>%f%F{226}>%f.%F{124}>%f%F{160}>%f%F{196}>%f) %b"
RPROMPT="%(?..%F{196}%? %f)%F{238}%*%f"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

alias ssystemctl='/opt/bin/ssystemctl.sh'
alias pb="/home/u/cc/vimcnpaste.sh"
