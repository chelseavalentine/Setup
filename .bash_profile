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

createAndEnterDir() {
	mkdir $1
	cd $1
	git init
}

alias new=createAndEnterDir
