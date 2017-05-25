# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/james/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="↱"
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="↳ "
# Check https://github.com/bhilburn/powerlevel9k for all segments
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv_joined history_joined \
																		time_joined background_jobs_joined \
																		custom_yuan_joined)
POWERLEVEL9K_CUSTOM_YUAN="echo -e \"\u3007\""
# Hide the “user@hostname” info when you’re logged in as yourself on your local machine.
DEFAULT_USER="james"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# See https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins
# Add wisely, as too many plugins slow down shell startup.
plugins=(aws osx azure)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias textedit='open -a TextEdit'
alias subl='open -a Sublime\ Text'
alias ll='ls -l'
alias la='ls -al'
alias finder='open -a Finder'
alias gvim='open -a MacVim'
alias gits='git status'

# Activate the syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# JAVA JDK
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
# export JAVA_HOME=`/usr/libexec/java_home -v 1.7`

# APACHE MAVEN 3.3.1
# export M2_HOME=/System/Library/Apache-Maven/apache-maven-3.3.1
# export M2_HOME=/System/Library/Apache-Maven/apache-maven-2.2.1

export MAVEN_OPTS="-Xms256m -Xmx512m"
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

# Spark
# export MAVEN_OPTS="-Xmx2g -XX:MaxPermSize=512M -XX:ReservedCodeCacheSize=512m"

# Go
export GOPATH="/Users/james/Documents/workspaces/go"
export PATH=$PATH:$GOPATH/bin

# pyenv
# eval "$(pyenv init -)"
# export PATH=$PATH:/usr/local/texbin

# softflowd installed here
export PATH=$PATH:/usr/local/sbin/

# Fix ValueError: unknown locale in python
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# pip should only run if there is a virtualenv currently activated
# export PIP_REQUIRE_VIRTUALENV=true

export PATH=$PATH:/Users/james/bin


# virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh
# Using Python3 in 15619
workon 15619

# Azure
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
source /Users/james/lib/azure-cli/az.completion

# Google Cloud Platform
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/james/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/james/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/james/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/james/google-cloud-sdk/completion.zsh.inc'; fi
