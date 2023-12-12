PATH="$PATH:~/.x"
PS1="\\[\033[7m\\] \w \\[\033[0m\\] "

export $PATH

ll(){
	if [ -z "$1" ]; then
		_1="."
	else
		_1="$1"
	fi
	if [ -f "$_1" ]; then
		less "$_1"
	else
		ls -AFGHhl --color=never --group-directories-first "$_1" | tail -n+2 | less -X
	fi
}

alias bail="wget -P ~/ https://raw.githubusercontent.com/OPR-IT/Tools/main/.bash_aliases -O .bash_aliases && src"
alias cc="sudo cp -iv"
alias e="vi"
alias instol="sudo apt install"
alias klar="clear"
alias lnk="ln -s"
alias mk="mkdir -pv"
alias mm="sudo mv -iv"
alias ops="top"
alias qq="clear ; exit"
alias rr="sudo rm -Irv"
alias src="source ~/.bash_aliases"
alias swim="sudo vi"
alias targ="tar -xvf"
alias up="sudo apt update && sudo apt upgrade -y"
alias wd="cd"
alias xx="chmod +x"

clear
