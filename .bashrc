orange=$(tput setaf 166)
yellow=$(tput setaf 228)
green=$(tput setaf 71)
white=$(tput setaf 15)
bold=$(tput bold)
reset=$(tput sgr0)

PS1="\[${bold}\]\n"
PS1+="\[${orange}\]\u"
PS1+="\[${white}\]@" 
PS1+="\[${yellow}\]\h" 
PS1+="\[${white}\] in "
PS1+="\[${green}\]\w"
PS1+="\n"
PS1+="\[${white}\]$ \[${reset}\]"
export PS1;

alias gitgraph='git log --all --decorate --oneline --graph'
alias ls='ls  --color'
alias tree='tree -C'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
