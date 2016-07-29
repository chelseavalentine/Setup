alias sourcebash="source ~/.bash_profile"

# Git
alias gs="git status"
alias gc="git checkout"
alias gb="git branch"
alias gp="git push"
alias gpom="git pull origin master"

createAndEnterDir() {
	mkdir $1
	cd $1
}

alias new=createAndEnterDir
