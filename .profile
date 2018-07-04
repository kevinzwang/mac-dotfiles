export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-9.0.1.jdk/Contents/Home"
export HOMEBREW_NO_AUTO_UPDATE="1"
export PATH=$PATH:/Users/kevin/code/scripts
export PATH=$PATH:/Users/kevin/.nvm/versions/node/v*/bin

# ------------ Python ------------

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/code
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
source /usr/local/bin/virtualenvwrapper_lazy.sh
# source /usr/local/bin/virtualenvwrapper.sh
alias load_venv="virtualenvwrapper_load"

alias pip3="python3 -m pip"

# ------------- NODE -------------

alias load_nvm='export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"'
alias lnvm=load_nvm
alias node='unalias node npm && load_nvm && node'
alias npm='unalias node npm && load_nvm && npm'
alias npx='load_nvm && npx'
alias yarn='load_nvm && yarn'
# export NVM_DIR="/Users/kevin/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# -------------- GO --------------

export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
