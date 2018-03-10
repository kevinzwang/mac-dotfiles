export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-9.0.1.jdk/Contents/Home"
export HOMEBREW_NO_AUTO_UPDATE="1"
export PATH=$PATH:/Users/kevin/code/scripts

# ------------ Python ------------

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/code
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
source /usr/local/bin/virtualenvwrapper_lazy.sh
# source /usr/local/bin/virtualenvwrapper.sh

# ------------- NODE -------------

alias load_nvm='export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"'
alias node='unalias node npm && load_nvm && node'
alias npm='unalias node npm && load_nvm && npm'
