source ~/.profile

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export VIRTUAL_ENV_DISABLE_PROMPT=1

setopt correct

export TERM="xterm-256color"
export CLICOLOR=1

alias git=hub
alias rezsh="source ~/.zshrc"
# alias g=google
alias fucking=sudo
alias please=sudo
alias c=clear

alias tp=trash-put
alias tl=trash-list
alias te=trash-empty

alias sn="spotify next"
alias sp="spotify prev"
alias play="spotify play"
alias pause="spotify pause"


alias gcssh="gcloud compute --project \"playground-190619\" ssh --zone \"us-east1-b\" \"instance-2\""

alias myip="dig +short myip.opendns.com @resolver1.opendns.com"

alias t=task
alias tt="task due:tomorrow"
alias ta="task add"

alias java8="export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_152.jdk/Contents/Home"
alias java9="export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-9.0.4.jdk/Contents/Home"
alias java11="export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.1.jdk/Contents/Home"

alias s=spotify
alias ss="spotify status"

alias ssaver="/System/Library/CoreServices/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine"

alias celar="clear && echo \"learn how to type goddamn it\""
alias lcear=celar

# Z config
. /usr/local/etc/profile.d/z.sh

# Minimal Prompt

MINIMAL_PWD_CHAR_LEN=12
MINIMAL_PWD_LEN=4
# MINIMAL_USER_CHAR='(∩ ` -´)⊃━━'
# MINIMAL_INSERT_CHAR='☆ﾟ.*･｡ﾟ'
source ~/.zsh/minimal/minimal.zsh

# ------- CUSTOM FUNCTIONS -------

# google() {
#     search=""
#     for term in $@; do
#         search="$search%20$term"
#     done
#     open "http://www.google.com/search?q=$search"
# }

# dash() {
#     search=""
#     for term in $@; do
#         search="$search%20$term"
#     done
#     open "dash://$search"
# }

# -------- DEFAULT CONFIG --------

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/kevin/.zshrc'

autoload -Uz compinit
if [ $(date +'%j') != $(stat -f '%Sm' -t '%j' ~/.zcompdump) ]; then
  compinit
else
  compinit -C
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kevin/Documents/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/kevin/Documents/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kevin/Documents/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/kevin/Documents/google-cloud-sdk/completion.zsh.inc'; fi
###-begin-pm2-completion-###
### credits to npm for the completion file model
#
# Installation: pm2 completion >> ~/.bashrc  (or ~/.zshrc)
#

COMP_WORDBREAKS=${COMP_WORDBREAKS/=/}
COMP_WORDBREAKS=${COMP_WORDBREAKS/@/}
export COMP_WORDBREAKS

if type complete &>/dev/null; then
  _pm2_completion () {
    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$COMP_CWORD" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           pm2 completion -- "${COMP_WORDS[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -o default -F _pm2_completion pm2
elif type compctl &>/dev/null; then
  _pm2_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       pm2 completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _pm2_completion + -f + pm2
fi
###-end-pm2-completion-###

alias stream="iina http://192.168.0.106:8888/"
alias mong="mongod --config /usr/local/etc/mongod.conf"

