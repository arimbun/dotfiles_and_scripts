# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/arthurrimbun/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically upgrade
DISABLE_UPDATE_PROMPT="true"

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source "/usr/local/opt/zsh-git-prompt/zshrc.sh"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# --- Personal repositories ---

alias gh-arimbun='cd $HOME/src/github.com/arimbun/'
alias gh-dotfiles='cd $HOME/src/github.com/arimbun/dotfiles_and_scripts'
alias gh-billmonger='cd $HOME/src/github.com/arimbun/billmonger'

# --- Personal repositories ---

alias gh-arimbun='cd $HOME/src/github.com/arimbun/'
alias gh-dotfiles='cd $HOME/src/github.com/arimbun/dotfiles_and_scripts'
alias gh-massl='cd $HOME/src/github.com/wolfeidau/golang-massl'

# --- Git aliases ---

alias gbdm='git branch --merged | grep -v \* | xargs git branch -d'
alias gcdf='git clean -d -f'
alias glst='git log --stat'
alias gpoh='git push origin HEAD'
alias gpohf='git push origin HEAD -f'
alias gpot='git push origin --tag'
alias gtl='git tag -l'

# --- TextMate --

# export EDITOR='mate -w'

# Press 'v' when opening a file with less to edit it in TextMate
export LESSEDIT='mate -l %lm %f'

# Press 'e' when opening a TeX file to edit it in TextMate
export TEXEDIT='mate -w -l %d "%s"'

# --- Others ---

alias ll='ls -la'
alias vmm='vim ~/src/meeting-minutes.txt'
alias cmm='cat ~/src/meeting-minutes.txt'
alias vbugs='vim ~/src/bugs.md'
alias vzsh='vim ~/.zshrc'
alias vret='vim ~/src/retro.txt'
alias sou='source ~/.zshrc'
alias h='history'
alias k='kubectl'
alias kc='vim ~/.kube/config'
alias dk='docker'
alias v='vault'

# --- Misc settings ---

source $HOME/bin/appspace.sh
source $HOME/bin/proxy.sh
source $HOME/bin/vault.sh
proxy_cntlm

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
