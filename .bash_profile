# Default text editor
export VISUAL=vim
export EDITOR="$VISUAL"

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

# Setup git branch tab autocompletion
test -f ~/.git-completion.bash && . $_

export GIT_PS1_SHOWDIRTYSTATE=true 
source ~/.git-prompt.sh

parse_git_branch() {
  __git_ps1 '[%s]'
}

export PS1="${CYAN}\$(date '+%a %m/%d') ${BOLD_CYAN}\t  ${BOLD_BLUE}\u ${WHITE}@ ${BOLD_YELLOW}\w ${BOLD_ORANGE}\$(parse_git_branch) ${BOLD_WHITE}\$ ${WHITE}"

alias sb="source ~/.bash_profile"

# General
alias ls="ls -aCGp"
alias rm="rm -i"
alias less="less -mNgiJR"

export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export LESS=" -R "

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
alias gd="git diff"
alias gs="git status"
alias gc="git checkout"
alias gb="git branch"
alias gp="git push"
alias gpom="git pull origin master"
alias gpo="git pull origin"
alias gr="git remote"
alias gfp="git fetch -p"
alias gf="git fetch"
alias gs="git status"
alias gl="git log"


# Other
alias venv="source venv/bin/activate"

# Paths
export PATH="/Users/chelsea/bin/:$PATH"
export PYTHONPATH="/Users/chelsea/Portfolio/chulc/:$PYTHONPATH"
