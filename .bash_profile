source ~/.git-prompt.sh
source ~/git-completion.bash
export PYTHONPATH="/Users/jasminenoack/Documents/offerpop/QA/lib/:$PYTHONPATH:$HOME/docker/offerpop/v2"
export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.7/site-packages:/usr/local/share/python:/usr/local/lib/python2.7/site-packages
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
export BUILD_ENV="dev"
export PATH=$PATH:/Users/jasminenoack/Library/Android/sdk/tools:/Library/PostgreSQL/9.4/bin/
export PS1='\n\[\e[1;37m\]|-- \[\e[1;32m\]\u\[\e[0;39m\]@\[\e[1;36m\]\h\[\e[0;39m\]:\[\e[1;33m\]\w\[\e[0;39m\]\[\e[1;35m\]$(__git_ps1 " (%s)")\[\e[0;39m\] \[\e[1;37m\]--|\[\e[0;39m\]\n$'
export GOPATH=$HOME/goProjects
# aliases
alias op='cd ~/docker/offerpop'
alias ops='cd ~/docker/offerpop-services/'
alias ga="git add"
alias gc="git commit"
alias gph="git push"
alias gpl="git pull"
alias delmerged="git branch --merged | grep -v "\*" | grep -v master | grep -v dev | xargs -n 1 git branch -d"
alias setper="chmod -R 777 ."

# "history | awk '{a[$2]++}END{for(i in a){print a[i] i}}' | sort -rn | head -20"

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# MacPorts Installer addition on 2015-06-29_at_17:46:21: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export NVM_DIR="/Users/jasminenoack/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


# DOCKER STUFF
export OP_SRC=$HOME/docker # local copies of Offerpop source code
source "$OP_SRC/docker/offerpop_settings.sh"

alias m_shell="(cd ${OP_SRC}/docker/compose/django; op-compose-tools run manage shell)"
alias d_logs="docker logs -f django_web_1"
alias d_manage="cd ${OP_SRC}/docker/compose/django; op-compose-tools run manage"
alias d_test="cd ${OP_SRC}/docker/compose/django; op-compose-tools run test-python"

