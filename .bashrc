#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/arriagareyes

export PATH="~/bin:$PATH"

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# List function
list() {
  ls -toghA
}

# Notes function to open my vimwiki
notes() {
  vim -c VimwikiIndex
}

# Use vim for manpages
export MANPAGER="vim +MANPAGER --not-a-term -"

PS1='\u@\h:\w\$ '

echo "Welcome back, $USER!"
