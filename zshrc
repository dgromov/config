# APP SETTINGS =====================================
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;31'

export HISTCONTROL=ignoredups
#====================================================

# ZSH SETTINGS ======================================
ZSH=$HOME/.oh-my-zsh
ZSH_THEME=dkg

plugins=(history-substring-search git zsh-syntax-highlighting)

source ~/.oh-my-zsh/plugins/zsh-git-prompt/zshrc.sh
source $ZSH/oh-my-zsh.sh
#===================================================

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/dkg/bin"

# JAVA ====================================================
export JAVA_HOME=$(/usr/libexec/java_home)

if [ -x /usr/libexec/path_helper ]; then
       eval `/usr/libexec/path_helper -s`
fi
# =========================================================

# GO ======================================================
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:$PATH

#==========================================================

# Node ====================================================
function activate_node {
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    nvm use 8.9.4
    nvm alias default 8.9.4
}
# [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# =========================================================


# Python ====================================================
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
# =========================================================



# PLUGINS =================================================
# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# =========================================================
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

function update_hosts() {
   aws ec2 describe-instances | jq '.Reservations[].Instances[0].Tags[] | select (.Key != null and .Key == "Name") | .Value' | sort | sed 's/"//g' > ~/hosts.json
}

function hosts() {
   HOSTS=$(cat ~/hosts.json)
   complete -W "$HOSTS" ssh
}

source $HOME/.rd/rd.conf
