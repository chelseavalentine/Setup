export PS1="\[\033[1;34m\]\d \t  \u @ \w \$ \[\033[0;37m\]"

alias sourceprivate="source ~/.private_profile"
alias sb="source ~/.bash_profile; sourceprivate"

# General
alias ls="ls -aCGp"
alias rm="rm -i"

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

# Other
alias venv="source venv/bin/activate"
alias lein="/Users/chelsea/bin/lein.txt"

createAndEnterDir() {
  mkdir $1
  cd $1
  git init
}

alias new=createAndEnterDir

# Paths
export PATH="/Users/chelsea/bin/:$PATH"
export PYTHONPATH="/Users/chelsea/Portfolio/chelseavday/:$PYTHONPATH"

# The next line updates PATH for the Google Cloud SDK.
source '/Users/chelsea/Downloads/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/chelsea/Downloads/google-cloud-sdk/completion.bash.inc'
