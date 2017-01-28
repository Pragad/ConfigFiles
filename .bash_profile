#!/bin/bash
#
# echo "Loading ${HOME}/.bash_profile"
#source ~/.profile # get my PATH setup
source ~/.bashrc  # get my Bash aliases

##
# Your previous /Users/pragadh/.bash_profile file was backed up as /Users/pragadh/.bash_profile.macports-saved_2016-08-09_at_21:03:18
##

# Setup JAVA_HOME path
export JAVA_HOME=$(/usr/libexec/java_home)

# MacPorts Installer addition on 2016-08-09_at_21:03:18: adding an appropriate PATH variable for use with MacPorts.
export PATH=/usr/local/bin:$PATH
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# Setup MySQL path
#export PATH=/usr/local/mysql/bin:$PATH
