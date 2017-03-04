#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export VISUAL=/usr/bin/vim
alias ls='ls --color=auto'
alias grep='grep --color'
alias please='sudo !!'
alias systat='systemctl status '
alias make='make -j`expr $(nproc)  - 1`'
alias clip='xclip -selection clipboard'
alias ssh='TERM=xterm ssh'
alias python='python2'

baka () {
	toilet -f mono9 -F gay "baka"
}

name () {
	while true; do echo "{\"name\":\"ok\"}" | json_ppp 2>/dev/null; done
}

manopt () {
	local cmd=$1 opt=$2
	[[ $opt == -* ]] || { (( ${#opt} == 1 )) && opt="-$opt" || opt="--$opt"; }
	man "$cmd" | col -b | awk -v opt="$opt" -v RS= '$0 ~ "(^|,)[[:blank:]]+" opt "([[:punct:][:space:]]|$)"'
}

function rand_key () {
	cat /dev/urandom | xxd -ps | head -c64 | sed ':a;N;$!ba;s/\n//g' && echo
}

function we () {
	if [[ "$1" == "wuz" ]]; then
		toilet -f mono9 -F gay "kangs"
	fi
}

PS1="\[\033[01;32m\]\u@\h\[\033[0;35m\] \W \[\033[00m\]$\[\033[00m\] "
export PS1

source /usr/share/git/completion/git-completion.bash

URHO3D_PREFIX_PATH="/usr/share/Urho3D/Resources"
export URHO3D_PREFIX_PATH

PATH="$HOME/scripts:$HOME/.gem/ruby/2.3.0/bin:$PATH"
export PATH

pol () 
{ 
    toilet -f mono9 -F gay "pol"
}
