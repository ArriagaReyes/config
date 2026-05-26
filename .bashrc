#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=vim
export VISUAL=vim
export PATH="$HOME/.local/bin:$PATH"
export PATH="~/bin:$PATH"

alias ls='ls --color=auto'
alias grep='grep --color=auto'

v() {
	vim -c Goyo -c Limelight "$@"
}

export -f v

# List function
list() {
  ls -toghA
}

# Notes function to open my vimwiki
notes() {
        vim -c Goyo -c Limelight -c VimwikiIndex
}

checkBatteryLevel() {
        acpi
}

# Use vim for manpages
export MANPAGER="vim +MANPAGER --not-a-term -"

PS1='\u@\h:\w\$ '

echo "Welcome back, $USER!"

eval "$(ssh-agent -s)" > /dev/null
ssh-add ~/.ssh/arriagareyes

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
