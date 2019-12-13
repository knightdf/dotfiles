# Path to your oh-my-zsh installation.
export ZSH=/Users/Ray/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="pygmalion"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx mvn zsh-autosuggestions zsh-syntax-highlighting virtualenv)

# User configuration
# zsh dumps
setopt HIST_IGNORE_ALL_DUPS

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
export CLICOLOR=1
export MANPATH="/usr/local/man:$MANPATH"
export TERM="xterm-256color"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias tailf="tail -f"
alias vi="vim"
alias ldd="otool -L"
alias less="less -M"
alias rm="safe-rm -i"
alias ping="ping -c 10"
alias scan="nmap -sS -Pn -A"
alias sshproxy="ssh -CND 127.0.0.1:1081"

export HOMEBREW_GITHUB_API_TOKEN="XXX"

# coreutils, gnu-sed
#if brew list | grep coreutils > /dev/null ; then
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH
export PATH=/usr/local/opt/gnu-sed/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH
alias ls='ls -F --show-control-chars --color=auto'
eval `gdircolors -b $HOME/.dir_colors`
#fi

# source-highlight
LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
LESS=' -R '
export LESSOPEN LESS

# plugin settings
# virtualenv
export VIRTUAL_ENV_DISABLE_PROMPT=

# java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/Current/Contents/Home
export JRE_HOME=$JAVA_HOME/jre
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib:$CLASSPATH
export PATH=$PATH:$JAVA_HOME/bin

# scala, for IDEA
export SCALA_HOME=/usr/local/opt/scala/idea

# hadoop
export HADOOP_HOME=/Users/Ray/Applications/hadoop
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export PATH=$PATH:$HADOOP_HOME/bin

# spark
export SPARK_HOME=/Users/Ray/Applications/spark
export LD_LIBRARY_PATH=$HADOOP_COMMON_LIB_NATIVE_DIR:$LD_LIBRARY_PATH
export PATH=$PATH:$SPARK_HOME/bin

# mysql
export PATH=$PATH:/usr/local/opt/mysql@5.7/bin
export DYLD_LIBRARY_PATH=/usr/local/opt/mysql@5.7/lib/:$DYLD_LIBRARY_PATH

# playframework
export ACTIVATOR_HOME=/Users/Ray/Applications/activator-1.3.7-minimal
export PATH=$PATH:$ACTIVATOR_HOME

# jekyll
export PATH=$PATH:/Library/Ruby/Gems/2.0.0/gems/jekyll-3.0.3/bin

# aliases
alias youdao="lua /opt/scripts/youdao.lua"
#alias btsync="sudo launchctl load -w /opt/scripts/com.bittorrent.sync.plist"
alias btsync="nohup /Applications/Resilio\ Sync.app/Contents/MacOS/Resilio\ Sync --config /Users/Ray/.btsync/btsync.json > /dev/null 2>&1 &"

# lua path and cpath
export LUA_PATH="./?.lua;/usr/local/share/lua/5.1/?.lua;/usr/local/share/lua/5.1/?/init.lua;/usr/local/lib/lua/5.1/?.lua;/usr/local/lib/lua/5.1/?/init.lua;;"
export LUA_CPATH="./?.so;/usr/local/lib/lua/5.1/?.so;/usr/local/lib/lua/5.1/loadall.so;;"

# python virtualenv
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# aws cli completion
source /usr/local/share/zsh/site-functions/_aws
# docker completion
source /usr/local/share/zsh/site-functions/_docker
# hexo completion
#eval "$(hexo --completion=zsh)"

# autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# jenv
export JENV_ROOT=/usr/local/var/jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

function setproxy() {
    if [ $# -eq 0 ];then
        # default ss proxy
        local proxy='socks5://127.0.0.1:1080'
    else
        local proxy=`echo $1 | awk 'BEGIN {Proxys["ss"]="socks5://127.0.0.1:1080";Proxys["tor"]="socks5://127.0.0.1:9050";Proxys["torb"]="socks5://127.0.0.1:9150";} {print Proxys[$1]}'`
        if [ "$proxy" = "" ];then
            echo "Usage: setproxy [ss|tor|torb]"
            return 1
        fi
    fi
    # export {HTTP,HTTPS,FTP}_PROXY="http://127.0.0.1:3128" 也可以设置http代理
    export ALL_PROXY=$proxy
    echo "set ALL_PROXY to $proxy"
    echo "$(curl -s myip.ipip.net)"
}

function unsetproxy() {
    # unset {HTTP,HTTPS,FTP}_PROXY
    unset ALL_PROXY
    echo "unset ALL_PROXY"
    echo "$(curl -s myip.ipip.net)"
}

# for tmux 2.2
#export EVENT_NOKQUEUE=1

# iterm2 shell integration, must be set at end of this file
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
