# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx django pip brew gem github rails redis-cli ruby rvm)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin
export PYTHONPATH=/usr/local/lib/python:$PYTHONPATH

#pip and virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Code/Python
export PIP_RESPECT_VIRTUALENV=true
source /usr/local/bin/virtualenvwrapper.sh

#postgres
export PGDATA=/usr/local/var/postgres
export PGHOST=localhost
export PGPORT=5432

#ruby rvm
[[ -s "/Users/strelok/.rvm/scripts/rvm" ]] && source "/Users/strelok/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias postgres-reload='pg_ctl reload'
alias postgres-restart='pg_ctl -l /usr/local/var/postgres/server.log -o "-i" restart'
alias postgres-start='pg_ctl -l /usr/local/var/postgres/server.log -o "-i" start'
alias postgres-stop='pg_ctl stop -s -m fast'
alias cdrepos='cd /Volumes/FreeAgent\ GoFlex\ Drive/Data/HG'
alias mongodb-start='mongod run --config /usr/local/Cellar/mongodb/2.0.2-x86_64/mongod.conf'
