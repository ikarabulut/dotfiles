export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo '('$branch')'
  fi
}

setopt prompt_subst

PROMPT='%F{178}$(git_branch_name)%f %F{13}%n%f:%F{202}%1~%f %# '


export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="${HOME}/bin:$PATH"
alias config='/usr/bin/git --git-dir=/Users/8thlight/.cfg/ --work-tree=/Users/8thlight'
