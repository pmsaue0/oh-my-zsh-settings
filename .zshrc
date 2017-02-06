# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="00-af-magic"
ZSH_THEME="00-sunrise"
# ZSH_THEME="random"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx terminalapp mercurial sublime mercurial rvm ruby rails)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

export GIT_EDITOR="subl -n -w"
export HGEDITOR="subl -n -w"
export VISUAL=subl
export EDITOR="subl -n -w"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ~='cd ~'
alias d='cd ~/Desktop'
alias o='open .'
alias ll='ls -la'
alias s='cd ~/Sites'
alias ss='subl .'
alias n="afplay -v 2 /System/Library/Sounds/Blow.aiff"
alias hgd="hg status --rev . --rev tip"
alias esstart="launchctl load /usr/local/opt/elasticsearch/homebrew.mxcl.elasticsearch.plist"
alias esstop="launchctl unload /usr/local/opt/elasticsearch/homebrew.mxcl.elasticsearch.plist"

# %{$Y%}‹
function hg_prompt_info {
    hg prompt --angle-brackets "\
<%{$Y%}‹hg:%{$W%}<branch>><%{$Y%}:<tags|, >>%{$Y%}›\
%{$B%}<status|modified|unknown><update>\
<patches: <patches|join( → )>> %{$reset_color%}" 2>/dev/null
}
# %B sets bold text
PROMPT='%{$KK%}------------------------------------------------------------%{$reset_color%}
%B%0~ $(custom_git_prompt)$(hg_prompt_info)%B» %{$RESET%}'
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting


export NVM_DIR="/Users/r620187/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
