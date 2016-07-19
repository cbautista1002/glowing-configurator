# General
alias r='clear'
alias cls='clear'
alias ll='ls -al'
alias lh='ls -halt'
alias hgi='history | grep -i'
alias gi='grep -i'
alias vbrc='vi ~/.bashrc'
alias sbrc='source ~/.bashrc'
alias vi='vim'
alias fpg='find . -name \*.py | xargs grep -in --colour '

# Git
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push origin master'
alias gd='git diff'
alias gi='git init'
alias gb='git branch'
alias gbm='git branch --merged'
alias gr='git remote -v'
alias gch='git checkout'
alias gchb='git checkout -b'
alias gfpo='git fetch --prune origin'
alias gfpu='git fetch --prune upstream'
alias grum='git rebase upstream/master'
alias grom='git rebase origin/master'
alias grud='git rebase upstream/develop'
alias grod='git rebase origin/develop'
alias gpf='git push -f'
alias guu='gfpu;grum'
alias guo='gfpo;grom'

# Docker
alias dc='docker-compose'
alias dps='docker ps'
alias di='docker images'
alias de='docker exec -it'
alias dpu='docker pull'
alias ds='docker stop'
alias drm='docker rm'

