

alias ls='ls -lGhF'
alias ll='ls -la'

LSCOLORS='exfxcxdxbxegedabagacad' ; export LSCOLORS
export SVN_EDITOR=/usr/bin/vim
source ~/bin/git-completion.sh

export GIT_PS1_SHOWDIRTYSTATE=true

txtylw='\033[1;33m' # Yellow
fgcolor="\033[0m"    # unsets color to term's fg color
twolevelprompt='$([ "$PWD" != "${PWD%/*/*/*}" ] && echo "/...${PWD##${PWD%/*/*}}" || echo "$PWD")'
gitprompt='$(__git_ps1 "[%s]")'
export PS1="\[$txtylw\] $twolevelprompt\[$fgcolor\]$gitprompt"'\$ '


##
# Your previous /Users/eric/.profile file was backed up as /Users/eric/.profile.macports-saved_2009-03-10_at_16:53:51
##
/usr/bin/ssh-agent > /dev/null


# Add MAMP lib bin to path
export PATH=/Applications/MAMP/Library/bin:$PATH

# Add cake console tools
export PATH=/Users/eric/cakephp/current/cake/console:$PATH
export PATH=~/opt/bin:${PATH}

# Add for brews python3
export PATH=/usr/local/share/python3:$PATH


[[ -n $PS1 && -f ~/.bashrc ]] && . ~/.bashrc