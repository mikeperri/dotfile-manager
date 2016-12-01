export PATH=$PATH:~/scripts

# UI
export CLICOLOR=1
export LSCOLORS=gafxcxdxbxaggeabagacad
export PS1="\[\033[33;1m\]\w\[\033[36m\]\$(parse_git_branch)\[\033[00m\]$ "
alias ls='ls -GFh'

set -o vi

#Homebrew
export PATH=/usr/local/bin:$PATH

# Docker
export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.99.100:2376"
export DOCKER_CERT_PATH="/Users/michaelperri/.docker/machine/machines/dev"
export DOCKER_MACHINE_NAME="dev"

# Apache Tomcat
export CATALINA_HOME="/usr/local/Cellar/tomcat/8.0.27/libexec"

# Node
alias npm-linked="ls -l node_modules | grep ^l | awk '{print substr(\$9, 0, length(\$9)-1)}'"
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

#OpenCV
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/usr/local/lib:/usr/local/Cellar/opencv3/3.0.0/lib/pkgconfig/

# Git
source ~/git-completion.bash
function parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Etc
alias notes="vim ~/dev/notes.txt"
alias lock="pmset displaysleepnow"
