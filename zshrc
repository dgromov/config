# APP SETTINGS =====================================
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;31'
export LANG="en_US.UTF-8"
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

# Python ====================================================
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
# =========================================================

# PLUGINS =================================================
# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
