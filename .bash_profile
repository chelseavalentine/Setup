# Default text editor
export VISUAL=vim
export EDITOR="$VISUAL"
export PS1="\[\033[00;36m\]\d \[\033[1;36m\]\t  \[\033[1;34m\]\u \[\033[1;37m\]@ \[\033[1;33m\]\w \[\033[1;37m\]\$ \[\033[0;37m\]"


# Colors
NO_COLOR="\[\033[0m\]"
BOLD_GREY="\[\033[1;30m\]"
GREY="\[\033[0;30m\]"
BOLD_RED="\[\033[1;31m\]"
RED="\[\033[0;31m\]"
BOLD_GREEN="\[\033[1;32m\]"
GREEN="\[\033[0;32m\]"
BOLD_YELLOW="\[\033[1;33m\]"
YELLOW="\[\033[0;33m\]"
BOLD_BLUE="\[\033[1;34m\]"
BLUE="\[\033[0;34m\]"
BOLD_ORANGE="\[\033[1;35m\]"
ORANGE="\[\033[0;35m\]"
BOLD_CYAN="\[\033[1;36m\]"
CYAN="\[\033[0;36m\]"
BOLD_WHITE="\[\033[1;37m\]"
WHITE="\[\033[0;37m\]"

source ~/.git-prompt.sh
export PS1="${CYAN}$(date '+%a %m/%d') ${BOLD_CYAN}\t > ${BOLD_BLUE}\u ${WHTE}> @ ${BOLD_YELLOW}\w ${BOLD_RED}(\`__git_ps1 "%s"\`*)
${BOLD_WHTE}\$ ${WHITE}"

parse_git_branch() {
    git branch |
    grep '*' |
    while read line;
    do [ -z "$line" ] && continue;
	    echo ${line##* };
    done;
}

alias sourceprivate="source ~/.private_profile"
alias sb="source ~/.bash_profile; sourceprivate"

# General
alias ls="ls -aCGp"
alias rm="rm -i"

export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export LESS=" -R "
alias less="less -mNgiJR"

# man pages syntax highlighting
# Source: Todd Weed: https://goo.gl/ZSbwZI
export LESS_TERMCAP_mb=$'\e[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\e[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\e[0m'           # end mode
export LESS_TERMCAP_se=$'\e[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[37;44m'       # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\e[0m'           # end underline
export LESS_TERMCAP_us=$'\e[04;38;5;146m' # begin underline

# Git
alias gs="git status"
alias gc="git checkout"
alias gb="git branch"
alias gp="git push"
alias gpom="git pull origin master"
alias gpo="git pull origin"
alias gr="git remote"
alias gfp="git fetch -p"
alias gf="git fetch"

commitMsg() {
  git commit -m "$1"
}

alias gcm=commitMsg

# Other
alias venv="source venv/bin/activate"

createAndEnterDir() {
  mkdir $1
  cd $1
  git init
}

alias new=createAndEnterDir

# Paths
export PATH="/Users/chelsea/bin/:$PATH"
export PYTHONPATH="/Users/chelsea/Portfolio/chulc/:$PYTHONPATH"
