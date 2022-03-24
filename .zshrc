# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="~/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    zsh-autosuggestions
    zsh-vim-mode
)

ZSH_DISABLE_COMPFIX=true

# https://stackoverflow.com/questions/58187542/how-to-setup-vi-editing-mode-for-zsh#:~:text=bindkey%20%2Dv%20is%20enough%20to,%22insert%22%20mode%20by%20default.
# The below makes crtl + R not work. So using 'zsh-vim-mode' plugin
# bindkey -v

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

## Use a long listing format ##
alias ll="ls -lhA"
alias lh="ls -lhAt"

## Show hidden files ##
alias l.='ls -d .* --color=auto'

#==========================================================
# Get IP address for Mac
alias getip='ipconfig getifaddr en0'
#==========================================================
#Git shortcuts
alias gstat='echo "git status" ; git status'
alias gdiff='echo "git diff" ; git diff'
alias gadd='echo "git add" ; git add '
alias gbr='echo "git branch -vv" ; git branch -vv'
alias gbrd='echo "git branch -D " ; git branch -D '
alias gch='echo "git checkout" ; git checkout '
alias gchb='echo "git checkout -b " ; git checkout -b '
alias gco='echo "git commit " ; git commit '
alias gam='echo "git commit --amend" ; git commit --amend'
alias gbase='echo "git pull --rebase" ; git pull --rebase'
alias gstash='echo "git stash " ; git stash '
alias gpull='echo "git pull " ; git pull '
alias glog='echo "git log oneline" ; git log --pretty=oneline'
alias gpush='echo "git push origin master" ; git push origin master'
alias gup='echo "git branch --set-upstream-to=origin/mainline " ; git branch --set-upstream-to=origin/mainline '
#==========================================================

alias cdmine='cd ~/Pragad/ItsMine'

alias cdco='cd ~/Pragad/Code'
alias cdal='cd ~/Pragad/Code/Algos'
alias cdcp='cd ~/Pragad/Code/LearnCpp'
alias cdpy='cd ~/Pragad/Code/LearnPython'
alias cdja='cd ~/Pragad/Code/LearnJava'
alias cdot='cd ~/Pragad/Code/OtherLearnings'

## VIM aliases
alias vimac='vim ~/Pragad/Code/OtherLearnings/MACStuff/macbook_shortcuts.txt'
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'
alias srcbashrc='source ~/.bashrc'
alias srcvimrc='source ~/.vimrc'

## ## ## ## ## ## ## ## ##
## Flutter
## ## ## ## ## ## ## ## ##
#export PATH="~/flutter/bin:$PATH"

## Maven
## https://crunchify.com/how-to-install-maven-on-mac-os-x-manually-fix-unsupportedclassversionerror-orgapachemavenclimavencli/
##
#export M2_HOME=~/apache-maven-3.8.4
export PATH=$PATH:$M2_HOME/bin
