export EDITOR=vim

# Change the way BASH prompt gets displayed
export PS1="\W \$"

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

## Frequent cd lists
alias cdprag='cd ~/PRAGADH/'
alias cddev='cd ~/PRAGADH/DEV/'
alias cdcpp='cd ~/Prag/Dev/cpp'
alias cdpy='cd ~/Prag/Dev/Python'
alias cdjava='cd ~/Prag/Dev/java'
alias cddev='cd /Users/pragadh/PRAGADH/DEV'
alias vim='mvim -v'

## VIM aliases
alias vimmac='vim ~/PRAGADH/DEV/OtherLearnings/MACStuff/macbook_shortcuts.txt'
alias vimshort='vim /Users/pragadh/PRAGADH/DEV/OtherLearnings/My_Shortcuts.txt'
# alias vimrc='vim ~/.vim/vimrc.txt'
alias vimrc='vim ~/.vimrc'

# How do I make Bash' tab complete automatically cycle through options OSX
bind '"\t":menu-complete'
