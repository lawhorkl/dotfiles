
function bgrep {
  ag "$@" $(bundle show --paths) .
}

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export TERM="xterm-256color"


