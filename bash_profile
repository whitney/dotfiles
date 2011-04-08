# =============
# = Variables =
# =============

export PATH=/opt/local/bin:/opt/local/sbin:$PATH

export PS1="\[\e[1;30m\]\u@\h:\[\e[1;36m\]\w $ \[\e[0m\]"

export DISPLAY=:0.0
export EDITOR=/usr/bin/vim

source $HOME/.aws/aws.conf

export PATH=$PATH:$EC2_HOME/bin:~/aws/s3sync:${EC2_AMITOOL_HOME:-EC2_HOME}/bin

export GREP_COLOR=31

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# ===========
# = Aliases =
# ===========

alias grep="grep --color=auto"
alias ll="ls -lha --color=auto"
alias l="ls -lh --color=auto"
alias b="cd .."
alias ls='ls --color=auto'
alias la='ls -lAXh --color=always|less -R'
alias mysql="/usr/local/mysql/bin/mysql -u root"
alias psql="/Library/PostgreSQL/9.0/scripts/runpsql.sh"
alias vi="vim"
alias bap="sudo apachectl restart"
alias bem="sudo killall memcached; memcached -d -m 64"

# =============
# = Functions =
# =============

## Archives
# Extract about anything
extract () 
{
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1        ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.bz2)       bunzip2 $1       ;;
            *.rar)       unrar x $1     ;;
            *.gz)        gunzip $1     ;;
            *.tar)       tar xvf $1        ;;
            *.tbz2)      tar xvjf $1      ;;
            *.tgz)       tar xvzf $1       ;;
            *.zip)       unzip $1     ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1    ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}
