export EDITOR=vim

# Change the way BASH prompt gets displayed
export PS1="\W \$"
#PS1='\[\e[s\e[1;1H\e[42m\e[K\h \u ipaddress\e[0m\e[u\]\w \$ '
#===========================================================
# Make Bash behave like VIM
# https://superuser.com/questions/485139/how-can-i-make-my-shell-behave-like-vim
#set -o vi
#===========================================================
# Add colors to bash
# http://stackoverflow.com/questions/1550288/os-x-terminal-colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

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

# Centos
#alias cdpr='cd /home/kompuser/pragadtmp'
#alias cdjni='cd /home/kompuser/pragadtmp/Code/kpsrc/kjni'
#==========================================================
# Alias's for safe and forced reboots
alias rebootsafe='sudo shutdown -r now'
alias rebootforce='sudo shutdown -r -n now'
#==========================================================
alias vi=vim
alias cls=clear
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

alias cdmine='cd /Users/pragad/Pragad/ItsMine'
alias cdko='cd /Users/pragad/Komprise'
alias cdte='cd /Users/pragad/Komprise/Team'
alias cdco='cd /Users/pragad/Komprise/Code'
alias cdkpsrc='cd /Users/pragad/Komprise/Code/kpsrc'
alias cdkdc='cd /Users/pragad/Komprise/Code/kpsrc/kdc'
alias cdkpsrcprod='cd /Users/pragad/Komprise/Code/kpsrc-prod'
alias cdkdcprod='cd /Users/pragad/Komprise/Code/kpsrc-prod/kdc'

alias cdal='cd /Users/pragad/Pragad/Code/Algos'
alias cdcp='cd /Users/pragad/Pragad/Code/LearnCpp'
alias cdpy='cd /Users/pragad/Pragad/Code/LearnPython'
alias cdja='cd /Users/pragad/Pragad/Code/LearnJava'
alias cdot='cd /Users/pragad/Pragad/Code/OtherLearnings'

# Komprise Observer Director
alias obstart='echo "observer start" ; observer start'
alias obstat='echo "observer status" ; observer status'
alias obstop='echo "observer stop" ; observer stop'
alias dirstart='echo "~/director/bin/start.sh" ; ~/director/bin/start.sh'
alias dirstop='echo "~/director/bin/shutdown.sh" ; ~/director/bin/shutdown.sh'
alias dirdel='echo "sudo rm -rf director/apache-tomcat-8.0.24/webapps/ROOT*" ; sudo rm -rf director/apache-tomcat-8.0.24/webapps/ROOT*'

# Ssh to komprise's observer
#alias sshko='ssh kompuser@10.1.155.54'
alias sshko49='/Users/pragad/ItsMine/Dev_Git/OtherLearnings/Scripts/BashShellScripts/sshToKompriseKovaExpect49'
alias sshko40='/Users/pragad/ItsMine/Dev_Git/OtherLearnings/Scripts/BashShellScripts/sshToKompriseKovaExpect40'
alias sshko25='/Users/pragad/ItsMine/Dev_Git/OtherLearnings/Scripts/BashShellScripts/sshToKompriseKovaExpect25'
alias sshna='/Users/pragad/ItsMine/Dev_Git/OtherLearnings/Scripts/BashShellScripts/sshToNetAppCmodeFiler'
alias sshk='/Users/pragad/ItsMine/Dev_Git/OtherLearnings/Scripts/BashShellScripts/sshToKompriseWithPassword'
alias scpob='echo "scp observer/target/observer-1.0-SNAPSHOT.jar kompuser@10.1.155.49:~/lib" ; scp observer/target/observer-1.0-SNAPSHOT.jar kompuser@10.1.155.49:~/lib'
alias scpdir='echo "scp director/web/target/web-1.0-SNAPSHOT.war  kompuser@10.1.155.49:~/director/apache-tomcat-8.0.24/webapps/ROOT.war" ; scp director/web/target/web-1.0-SNAPSHOT.war  kompuser@10.1.155.49:~/director/apache-tomcat-8.0.24/webapps/ROOT.war'
alias scpob25='echo "scp observer/target/observer-1.0-SNAPSHOT.jar kompuser@10.1.155.25:~/lib" ; scp observer/target/observer-1.0-SNAPSHOT.jar kompuser@10.1.155.25:~/lib'
alias scpdir25='echo "scp director/web/target/web-1.0-SNAPSHOT.war  kompuser@10.1.155.25:~/director/apache-tomcat-8.0.24/webapps/ROOT.war" ; scp director/web/target/web-1.0-SNAPSHOT.war  kompuser@10.1.155.49:~/director/apache-tomcat-8.0.24/webapps/ROOT.war'
alias scpcn='echo "scp changenotify/server/target/changenotify-server-1.0-SNAPSHOT.jar kompuser@10.1.155.49:~/lib" ; scp changenotify/server/target/changenotify-server-1.0-SNAPSHOT.jar kompuser@10.1.155.25:~/lib'
alias scpobprod='echo "scp observer/target/observer-2.2.2.jar kompuser@10.1.155.40:~/lib" ; scp observer/target/observer-2.2.2.jar kompuser@10.1.155.40:~/lib'
alias scpdirprod='echo "scp director/web/target/web-2.2.2.war  kompuser@10.1.155.40:~/director/apache-tomcat-8.0.24/webapps/ROOT.war" ; scp director/web/target/web-2.2.2.war  kompuser@10.1.155.40:~/director/apache-tomcat-8.0.24/webapps/ROOT.war'
#alias vim='mvim -v'
alias python='python3'
#==========================================================
#Applications
alias ch="open -a 'Google Chrome'"
alias ff="open -a 'Firefox'"
#==========================================================

## VIM aliases
alias vimac='vim /Users/pragad/Pragad/Code/OtherLearnings/MACStuff/macbook_shortcuts.txt'
alias viko='vim /Users/pragad/Komprise/KompriseLearnings.txt'
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'

alias srcbashrc='source ~/.bashrc'
alias srcvimrc='source ~/.vimrc'

# How do I make Bash' tab complete automatically cycle through options OSX
#bind '"\t":menu-complete'

# From Work
#export P4DIFF=vimdiff

#export LS_COLORS='di=01;33'
##export LS_COLORS='di=01;37'

#shopt -s histappend
#export PROMPT_COMMAND='history -a; history -n'

export HISTSIZE=100000
export HISTFILESIZE=500000
export HISTCONTROL="ignoreboth:erasedups"
export HISTIGNORE="pwd:ls:ll:cd ..:cd:exit"

#alias ls='ls --color=yes'

# FitBit
export CLIENT_ID=228NTX
export CLIENT_SECRET=23918ff7ecb77e876425efdc54dab3e3
export SESSION_SECRET=
export CALLBACK_URL=http://localhost:3000/callback

# The Fuck
# https://github.com/nvbn/thefuck#experimental-instant-mode
#eval $(thefuck --alias)
# You can use whatever you want as an alias, like for Mondays:
#eval $(thefuck --alias FUCK)
