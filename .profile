export PATH=/usr/local/bin:$PATH
export PATH=~/Library/Python/2.7/bin:$PATH

export ANDROID_SDK="/Users/kevin/Library/Android/sdk"

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-11.0.1.jdk/Contents/Home"
export HOMEBREW_NO_AUTO_UPDATE="1"
export PATH=$PATH:/Users/kevin/code/scripts
export PATH=$PATH:/Users/kevin/.nvm/versions/node/v*/bin

export ANDROID_HOME=/usr/local/opt/android-sdk

# ------------ Python ------------

alias pip3="python3 -m pip"
alias venv="python3 -m venv"

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

export PATH="$HOME/.cargo/bin:$PATH"
