# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~"/.oh-my-zsh"

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

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
    vi-mode
)

ZSH_DISABLE_COMPFIX=true

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
alias gpush='echo "git push origin main" ; git push origin main'
alias gpushm='echo "git push origin master" ; git push origin master'
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
export PATH="/Users/pragad/Library/Python/3.7/bin:$PATH"
export ANDROID_HOME=~/Library/Android/sdk/
#export PATH=$PATH:/Users/pragad/Pragad/SmartE/platform-tools/
export PATH=$PATH:/Users/pragad/Pragad/SmartE/Open-Q_2500_Android_v1.3_JFlash/AdbFastboot/
export PATH=$PATH:/Users/pragad/Library/Python/3.9/bin/
export PATH=$PATH:/usr/local/Caskroom/flutter/3.24.3/flutter/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/opt/anaconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/opt/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<


