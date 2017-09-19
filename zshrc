# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

EDITOR='Atom'

# Allow for functions in the prompt.
setopt PROMPT_SUBST

# Get the name of the branch we are on
function parse_git_branch() {
  git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/(\1) /";
}

PS1="%~ \$(parse_git_branch)\$ "
