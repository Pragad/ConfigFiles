#!/bin/bash
#
# echo "Loading ${HOME}/.bash_profile"
#source ~/.profile # get my PATH setup
source ~/.bashrc  # get my Bash aliases

##
# Your previous /Users/pragadh/.bash_profile file was backed up as /Users/pragadh/.bash_profile.macports-saved_2016-08-09_at_21:03:18
##

# https://superuser.com/questions/399594/color-scheme-not-applied-in-iterm2
# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

# Setup JAVA_HOME path
export JAVA_HOME=$(/usr/libexec/java_home)

# MacPorts Installer addition on 2016-08-09_at_21:03:18: adding an appropriate PATH variable for use with MacPorts.
export PATH=/usr/local/bin:$PATH

# MacPorts Installer addition on 2016-08-09_at_21:03:18: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# Export CLASSPATH to include external Java libraries
export CLASSPATH=${CLASSPATH}:/Users/pragad/ItsMine/Dev_Git/JavaLibraries

# Setup MySQL path
#export PATH=/usr/local/mysql/bin:$PATH
export PATH="/usr/local/opt/openssl/bin:$PATH"
