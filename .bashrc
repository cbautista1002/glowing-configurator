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
alias fpgnt='find . -name "*.py" -not -path "*/tests/*" | xargs grep -in --colour'
alias fgg='find . -name \*.go | xargs grep -in --colour '
alias fggnt='find . -name "*.go" -not -path "*/tests/*" | xargs grep -in --colour'

# Git
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push origin master'
alias gd='git diff'
alias gi='git init'
alias gl='git log'
alias gb='git branch'
alias gbm='git branch --merged'
alias gr='git remote -v'
alias gch='git checkout'
alias gchb='git checkout -b'
alias gchm='git checkout master'
alias gchd='git checkout develop'
alias gfpo='git fetch --prune origin'
alias gfpu='git fetch --prune upstream'
alias grum='git rebase upstream/master'
alias grom='git rebase origin/master'
alias grud='git rebase upstream/develop'
alias grod='git rebase origin/develop'
alias gpf='git push -f'
alias guu='gfpu;grum'
alias guo='gfpo;grom'
alias gst='git stash'
alias gsta='git stash apply'

# Docker
alias dc='docker-compose'
alias dps='docker ps'
alias di='docker images'
alias de='docker exec -it'
alias dpu='docker pull'
alias ds='docker stop'
alias drm='docker rm'
#alias drst='docker rm -vf (docker ps -aq)'
alias dpsf='docker ps --format "table {{.Names}} {{.Status}} {{.Ports}}"'
alias drmi='docker rmi (docker images -q)'

# Kubernetes
alias k='kubectl'
alias kp='kubectl get pods'
alias ke='kubectl exec -it'
alias kl='kubectl logs'
alias kcfg='kubectl config'
# alias kstaging='kubectx staging; and kubens staging'
# alias ksandbox='kubectx sandbox; and kubens sandbox'
# alias kprod='kubectx prod; and kubens prod'
alias kstaging='tsh kube login stage-eks-cluster'
alias ksandbox='tsh kube login sandbox-eks-cluster'
alias kprod='tsh kube login prod-eks-cluster'
alias koldstage='kubectx aws-stage; and kubens staging'
alias kdev='kubectx aws-stage; and kubens dev'
alias kdemo='kubectx aws-stage; and kubens demo'
alias koff='kube_ps off'
alias kon='kube_ps on'
alias kpx='kubectl proxy'
alias kgv="kubectl get deploy -o wide | awk '{print $7}' | cut -d '/' -f2- | uniq"
alias kdp="k describe pod"

# Teleport
alias tshl='tsh login --proxy=boost.teleport.sh:443 --auth=google --user='

#alias kstage='kubectl config use-context aws-stage'
#alias kprod='kubectl config use-context aws-prod'
#alias ksp='kstage; and k proxy'
#alias kpp='kprod; and k proxy'
#alias kps='kubectl get pods -n staging'
#alias kpd='kubectl get pods -n dev'
#alias kls='kubectl logs -n staging'
#alias kld='kubectl logs -n dev'
#alias kes='kubectl exec -it -n staging'
#alias ked='kubectl exec -it -n dev'

# Helm
alias h='helm'

# Random
alias loaddata='cd ~/code/boost-platform/everett; and docker exec -it (docker ps --format "{{.Names}}" | grep -i everett) python manage.py loaddata everett/fixtures/*json; and cd -'
#alias drst='docker rm -fv (docker ps -aq); docker run -d --restart=always -v /var/run/docker.sock:/tmp/docker.sock:ro -p 80:80 -p 443:443 -p 19322:19322/udp -e DNS_IP=127.0.0.1 -e CONTAINER_NAME=http-proxy --name http-proxy codekitchen/dinghy-http-proxy; and dps -a'
#alias drst='docker rm -fv (docker ps -aq); and dps -a'
alias clear_postman='rm -rf ~/Library/Application\ Support/Postman'

alias generate_quote_pdf='docker-compose run --no-deps gutenberg pytest tests/scripts/test_generate_sample_pdf.py::test_generate_quote_document_for_state --disable-warnings --capture=no --save-sample-pdf'
alias generate_policy_pdf='docker-compose run --no-deps gutenberg pytest tests/scripts/test_generate_sample_pdf.py::test_generate_policy_document_for_state --disable-warnings --capture=no --save-sample-pdf'

# Make keyboard keys faster
# defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
# defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

