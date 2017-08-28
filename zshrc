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
export PATH="/Users/dmitriy/bin:/usr/local/sbin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

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
