export GOPATH=~/go
export GOROOT="$(brew --prefix go)/libexec"
export PATH="$(brew --prefix)/opt/make/libexec/gnubin:$PATH"
export PATH=${PATH}:$GOPATH/src/github.com/cockroachlabs/managed-service/bin
export PATH=${PATH}:$GOPATH/bin

alias gd='git diff'
alias gs='git status'
alias gck='git checkout'
alias gckm='git checkout master'
alias ga='git add .'
alias gc='git commit'
alias gca='git commit --amend'
alias gcan='git commit --amend --no-edit'
alias gpf='git push -f maryliag'
alias gpm='git pull origin master'
alias grm='git fetch && git rebase -i origin/master'
alias demo='./cockroach demo --insecure'
alias demonmt='./cockroach demo --insecure --multitenant=false'
alias demol='./cockroach demo --with-load --insecure'
alias crlsn='./cockroach start-single-node --insecure --advertise-addr=localhost:8080 --store=$HOME/db_data'
alias crlsnlogs='./cockroach start-single-node --insecure --advertise-addr=localhost:8080 --vmodule=conn_executor_exec=2'
alias demomr='./cockroach demo --nodes=9 --insecure \
--demo-locality=region=gcp-us-east1:region=gcp-us-east1:region=gcp-us-east1:\
region=gcp-us-west1:region=gcp-us-west1:region=gcp-us-west1:\
region=gcp-europe-west1:region=gcp-europe-west1:region=gcp-europe-west1'
alias uitest='yarn lerna run ci --stream'
alias cb='prmaster sync'

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

eval "$(starship init zsh)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/marylia/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/marylia/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/marylia/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/marylia/google-cloud-sdk/completion.zsh.inc'; fi