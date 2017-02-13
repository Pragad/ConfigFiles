export EDITOR=vim

# Change the way BASH prompt gets displayed
export PS1="\W \$"

# Add colors to bash
# http://stackoverflow.com/questions/1550288/os-x-terminal-colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias vi=vim
alias cls=clear

## a quick way to get out of current directory ##
alias ..='cd ..'

## get rid of command not found ##
alias cd..='cd ..'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'

## Colorize the ls output ##
## alias ls='ls --color=auto'

## Use a long listing format ##
alias ll="ls -lhA"
alias lh="ls -lhAt"

## Show hidden files ##
alias l.='ls -d .* --color=auto'

## Build C++ file using gcc##
alias mkcp='g++ -std=c++11'

## Frequent cd lists
alias srcbashrc='source ~/.bashrc'

# Centos
alias cdpr='cd /home/kompuser/pragadtmp'
alias cdjni='cd /home/kompuser/pragadtmp/Code/kpsrc/kjni'

alias cdmine='cd /Users/pragad/ItsMine'
alias cdko='cd /Users/pragad/Komprise'
alias cdte='cd /Users/pragad/Komprise/Team'
alias cdco='cd /Users/pragad/Komprise/Code'
alias cdkpsrc='cd /Users/pragad/Komprise/Code/kpsrc'
alias cdkdc='cd /Users/pragad/Komprise/Code/kpsrc/kdc'

alias cdal='cd /Users/pragad/ItsMine/Dev_Git/Algos'
alias cdcp='cd /Users/pragad/ItsMine/Dev_Git/LearnCpp'
alias cdpy='cd /Users/pragad/ItsMine/Dev_Git/LearnPython'
alias cdja='cd /Users/pragad/ItsMine/Dev_Git/LearnJava'
alias cdot='cd /Users/pragad/ItsMine/Dev_Git/OtherLearnings'

# Compile C++ file
alias mkcp='g++ -std=c++11 '

# Ssh to komprise's observer
#alias sshko='ssh kompuser@10.1.155.54'
alias sshko='/Users/pragad/ItsMine/Dev_Git/OtherLearnings/Scripts/BashShellScripts/sshToKompriseKovaExpect'

#alias vim='mvim -v'
alias python='python3'

## VIM aliases
alias vimac='vim /Users/pragad/ItsMine/Dev_Git/OtherLearnings/MACStuff/macbook_shortcuts.txt'
alias viko='vim /Users/pragad/Komprise/KompriseLearnings.txt'
# alias vimrc='vim ~/.vim/vimrc.txt'
alias vimrc='vim ~/.vimrc'

# How do I make Bash' tab complete automatically cycle through options OSX
bind '"\t":menu-complete'

# From Work
export P4DIFF=vimdiff

export LS_COLORS='di=01;33'
#export LS_COLORS='di=01;37'

shopt -s histappend
export PROMPT_COMMAND='history -a; history -n'

export HISTSIZE=100000
export HISTFILESIZE=500000
export HISTCONTROL="ignoreboth:erasedups"
export HISTIGNORE="pwd:ls:ll:cd ..:cd:exit"

#alias ls='ls --color=yes'
