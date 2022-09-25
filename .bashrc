alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '



#alias personalizados
alias d='dragon -a -x "$(ls -r | fzf -m)"'
alias v='vim $(find ~ -type f | fzf)'
alias bat='bat $(find ~ -type f | fzf)'
alias c='z $(find ~ -type d | fzf)'
alias cc='z $(find -type d | fzf)'
alias rmf='rm -rfI $(ls | fzf -m)'
alias rmc='rm -rfI $(find | fzf -m)'
alias bm='bashmount'
alias wall='sxiv -rqot  ~/Imágenes/wallpapers/ | xargs feh --bg-scale'


#Exports personalizados
#fzf.vim
export FZF_DEFAULT_COMMAND="find ~ -type f"

#pfetch
export PF_INFO="ascii title os host kernel uptime pkgs memory editor shell wm"


#Eval Personalizados
#zoxide necesario para el comando c
eval "$(zoxide init bash)"
