

alias ls='ls -lGhF'
alias ll='ls -la'

LSCOLORS='exfxcxdxbxegedabagacad' ; export LSCOLORS
export SVN_EDITOR=/usr/bin/vim
#source ~/bin/git-completion.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

export GIT_PS1_SHOWDIRTYSTATE=true

txtylw='\033[1;33m' # Yellow
fgcolor="\033[0m"    # unsets color to term's fg color
twolevelprompt='$([ "$PWD" != "${PWD%/*/*/*}" ] && echo "/...${PWD##${PWD%/*/*}}" || echo "$PWD")'
gitprompt='$(__git_ps1 "[%s]")'
export PS1="\[$txtylw\] $twolevelprompt\[$fgcolor\]$gitprompt"'\$ '

/usr/bin/ssh-agent > /dev/null

# add my bin dir to path
export PATH=~/bin:$PATH
export PATH=/usr/local/bin:$PATH

# Add MAMP lib bin to path
export PATH=/Applications/MAMP/Library/bin:$PATH

# Add for brews python3
export PATH=/usr/local/share/python3:$PATH

# Add Virtual box to path, vagrant setup
export PATH=$PATH:/Applications/VirtualBox.app/Contents/MacOS

# homebrew
homebrew=/usr/local/bin:/usr/local/sbin
export PATH=$homebrew:$PATH

[[ -n $PS1 && -f ~/.bashrc ]] && . ~/.bashrc

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 
